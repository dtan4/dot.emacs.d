;; PATH to the ruby installed by rbenv
(setenv "PATH" (concat (expand-file-name "~/.anyenv/envs/rbenv/shims:") (getenv "PATH")))
;; (autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
;; (setq enh-ruby-program "~/.anyenv/envs/rbenv/shims/ruby")

;; open shebang-added file in ruby-mode
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

;; ruby-block.el
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)
(setq ruby-block-delay 0.1)

(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.pryrc$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("config\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Berksfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))

(setq ruby-deep-indent-paren nil)

;; Do not insert magic comment
(defadvice ruby-mode-set-encoding (around stop-ruby-mode-set-encoding)
  "If ruby-not-insert-magic-comment is true, stops ruby-mode-set-encoding."
  (if (and (boundp 'ruby-not-insert-magic-comment)
           (not ruby-not-insert-magic-comment))
      ad-do-it))
(ad-activate 'ruby-mode-set-encoding)
(setq-default ruby-not-insert-magic-comment t)

(add-hook 'ruby-mode-hook 'ruby-end-mode)
(add-hook 'ruby-mode-hook 'auto-highlight-symbol-mode)
(add-hook 'ruby-mode-hook 'auto-complete-mode)
(add-hook 'ruby-mode-hook 'rspec-mode)
(add-hook 'ruby-mode-hook 'electric-pair-mode)
(add-hook 'ruby-mode-hook 'electric-indent-mode)
(add-hook 'ruby-mode-hook 'electric-layout-mode)

;; http://willnet.in/13
(defadvice ruby-indent-line (after unindent-closing-paren activate)
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

;; RSpec-mode
(custom-set-variables '(rspec-use-rake-flag nil))
