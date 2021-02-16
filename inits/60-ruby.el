(use-package enh-ruby-mode
  :mode (("\\.rb$" . enh-ruby-mode)
         ("Rakefile$" . enh-ruby-mode)
         ("\\.rake$" . enh-ruby-mode)
         ("\\.pryrc$" . enh-ruby-mode)
         ("Gemfile$" . enh-ruby-mode)
         ("config\.ru$" . enh-ruby-mode)
         ("\\.gemspec$" . enh-ruby-mode)
         ("Guardfile$" . enh-ruby-mode)
         ("Vagrantfile$" . enh-ruby-mode)
         ("Berksfile$" . enh-ruby-mode)
         ("Capfile$" . enh-ruby-mode)
         ("\\.cap$" . enh-ruby-mode))
  :interpreter "ruby"
  :init
  ;; PATH to the ruby installed by rbenv
  (setenv "PATH" (concat (expand-file-name "~/.rbenv/shims:") (getenv "PATH")))
  :config
  (setq enh-ruby-program "~/.rbenv/shims/ruby")
  (setq enh-ruby-deep-indent-paren nil)
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

  ;; Do not insert magic comment
  (defadvice enh-ruby-mode-set-encoding (around stop-enh-ruby-mode-set-encoding)
    "If enh-ruby-not-insert-magic-comment is true, stops enh-ruby-mode-set-encoding."
    (if (and (boundp 'enh-ruby-not-insert-magic-comment)
             (not enh-ruby-not-insert-magic-comment))
        ad-do-it))
  (ad-activate 'enh-ruby-mode-set-encoding)
  (setq-default enh-ruby-not-insert-magic-comment t)

  (add-hook 'enh-ruby-mode-hook 'auto-highlight-symbol-mode)
  (add-hook 'enh-ruby-mode-hook 'electric-pair-mode)
  (add-hook 'enh-ruby-mode-hook 'electric-indent-mode)
  (add-hook 'enh-ruby-mode-hook 'electric-layout-mode)
  (add-hook 'enh-ruby-mode-hook #'yas-minor-mode))

(use-package rhtml-mode
  :after enh-ruby-mode
  :mode ("\\.erb$" . rhtml-mode))

(use-package rspec-mode
  :after enh-ruby-mode
  :hook enh-ruby-mode
  :config
  (setq rspec-use-rake-flag nil)
  (setq rspec-primary-source-dirs '("app")))

(use-package ruby-end
  :after enh-ruby-mode
  :hook (enh-ruby-mode . ruby-end-mode))
