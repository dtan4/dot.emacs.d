(use-package lsp-mode
  :custom
  (lsp-print-io nil)
  (lsp-print-performance nil)
  (lsp-prefer-flymake :none)
  (lsp-completion-provider :capf)
  :commands (lsp lsp-deferred)
  :hook
  (go-mode . lsp-deferred)
  (rust-mode . lsp-deferred)
  :config
  ;; (lsp-register-custom-settings
  ;;  '(("gopls.staticcheck" t t)))
  (defun lsp-go-install-save-hooks ()
    (add-hook 'before-save-hook #'lsp-format-buffer t t)
    (add-hook 'before-save-hook #'lsp-organize-imports t t))
  (add-hook 'go-mode-hook #'lsp-go-install-save-hooks))

;; LSP UI tools
(use-package lsp-ui
  :custom
  ;; lsp-ui-doc
  (lsp-ui-doc-enable nil)
  (lsp-ui-doc-header t)
  (lsp-ui-doc-include-signature t)
  (lsp-ui-doc-position 'top) ;; top, bottom, or at-point
  (lsp-ui-doc-max-width 150)
  (lsp-ui-doc-max-height 30)
  (lsp-ui-doc-use-childframe t)
  (lsp-ui-doc-use-webkit t)
  ;; lsp-ui-flycheck
  ;; Disable this because this cannot coexist with other Flycheck linters
  ;; https://github.com/emacs-lsp/lsp-ui/issues/234#issuecomment-459056600
  ;; (lsp-ui-flycheck-enable t)
  ;; lsp-ui-sideline
  (lsp-ui-sideline-enable nil)
  ;; lsp-ui-imenu
  (lsp-ui-imenu-enable nil)
  (lsp-ui-imenu-kind-position 'top)
  ;; lsp-ui-peek
  (lsp-ui-peek-enable t)
  (lsp-ui-peek-peek-height 20)
  (lsp-ui-peek-list-width 50)
  (lsp-ui-peek-fontify 'on-demand) ;; never, on-demand, or always
  :bind
  (:map lsp-ui-mode-map
        ("M-." . lsp-ui-peek-find-definitions) ;; replace default M-. (xref-find-definitions)
        ("M-," . xref-pop-marker-stack)
        ("M-?" . lsp-ui-peek-find-references) ;; replace default M-? (xref-find-references)
        ("C-c i" . lsp-ui-peek-find-implementation)))
