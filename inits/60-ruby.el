;; PATH to the ruby installed by rbenv
(setenv "PATH" (concat (expand-file-name "~/.rbenv/shims:") (getenv "PATH")))
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(setq enh-ruby-program "~/.rbenv/shims/ruby")

;; open shebang-added file in enh-ruby-mode
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

;; ruby-block.el
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; ;; emacs-pry
;; (require 'pry)
;; (global-set-key [S-f9] 'pry-intercept)
;; (global-set-key [f9] 'pry-intercept-rerun)

(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\.lock$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("config\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Berksfile$" . enh-ruby-mode))


(setq enh-ruby-deep-indent-paren-style nil)

(add-hook 'enh-ruby-mode-hook 'ruby-end-mode)
(add-hook 'enh-ruby-mode-hook 'auto-highlight-symbol-mode)
(add-hook 'enh-ruby-mode-hook 'auto-complete-mode)
(add-hook 'enh-ruby-mode-hook 'rspec-mode)
(add-hook 'enh-ruby-mode-hook 'electric-pair-mode)
(add-hook 'enh-ruby-mode-hook 'electric-indent-mode)
(add-hook 'enh-ruby-mode-hook 'electric-layout-mode)

;; imenu settings
;; https://github.com/zenspider/elisp/blob/master/hooks/enh-ruby-mode.el
(defun ruby-outline-level ()
  "Return the depth to which a statement is nested in the outline.
Point must be at the beginning of a header line.
This is actually either the level specified in `outline-heading-alist'
or else the number of characters matched by `outline-regexp'."
  (let ((level (or (and (looking-at outline-regexp)
                        (match-string 1)
                        (- (match-end 1) (match-beginning 1)))
                   0)))
    (1+ (/ level 2))))
(set (make-local-variable 'outline-level) 'ruby-outline-level)
(setq outline-regexp-ruby
      (rx (group (* " "))
          bow
          (or "BEGIN" "END" "begin" "case" "class" "def" "else" "elsif" "loop"
              ;; "end"
              "ensure" "for" "if" "module" "rescue" "unless" "until"
              "when" "while")
          eow))
(defun enh-update-outline ()
  (interactive)
  (set (make-local-variable 'outline-regexp) outline-regexp-ruby))
(enh-update-outline)
(outline-minor-mode)
(imenu-add-menubar-index)

;; eRuby (rhtml-mode)
(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))

;; RSpec-mode
(custom-set-variables '(rspec-use-rake-flag nil))
