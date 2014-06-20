;; PATH to the ruby installed by rbenv
(setenv "PATH" (concat (expand-file-name "~/.anyenv/envs/rbenv/shims:") (getenv "PATH")))
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(setq enh-ruby-program "~/.anyenv/envs/rbenv/shims/ruby")

;; open shebang-added file in enh-ruby-mode
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

;; ruby-block.el
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)
(setq ruby-block-delay 0.1)

(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.pryrc$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("config\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Berksfile$" . enh-ruby-mode))

(setq enh-ruby-deep-indent-paren-style nil)

;; Do not insert magic comment
(defadvice enh-ruby-mode-set-encoding (around stop-enh-ruby-mode-set-encoding)
  "If enh-ruby-not-insert-magic-comment is true, stops enh-ruby-mode-set-encoding."
  (if (and (boundp 'enh-ruby-not-insert-magic-comment)
           (not enh-ruby-not-insert-magic-comment))
      ad-do-it))
(ad-activate 'enh-ruby-mode-set-encoding)
(setq-default enh-ruby-not-insert-magic-comment t)

(add-hook 'enh-ruby-mode-hook 'ruby-end-mode)
(add-hook 'enh-ruby-mode-hook 'auto-highlight-symbol-mode)
(add-hook 'enh-ruby-mode-hook 'auto-complete-mode)
(add-hook 'enh-ruby-mode-hook 'rspec-mode)
(add-hook 'enh-ruby-mode-hook 'electric-pair-mode)
(add-hook 'enh-ruby-mode-hook 'electric-indent-mode)
(add-hook 'enh-ruby-mode-hook 'electric-layout-mode)

;; http://willnet.in/13
(defadvice enh-ruby-indent-line (after unindent-closing-paren activate)
  (let ((column (current-column))
        indent offset)
    (save-excursion
      (back-to-indentation)
      (let ((state (syntax-ppss)))
        (setq offset (- column (current-column)))
        (when (and (eq (char-after) ?\))
                   (not (zerop (car state))))
          (goto-char (cadr state))
          (setq indent (current-indentation)))))
    (when indent
      (indent-line-to indent)
      (when (> offset 0) (forward-char offset)))))

;; eRuby (rhtml-mode)
(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))

;; RSpec-mode
(custom-set-variables '(rspec-use-rake-flag nil))
