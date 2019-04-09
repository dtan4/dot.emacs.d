;; inspired by https://qiita.com/Ladicle/items/feb5f9dce9adf89652cf

(use-package lsp-mode
  :ensure t
  :custom
  ;; debug
  (lsp-print-io nil)
  (lsp-trace nil)
  (lsp-print-performance nil)
  ;; general
  (lsp-auto-guess-root t)
  (lsp-document-sync-method 'incremental) ;; always send incremental document
  (lsp-response-timeout 5)
  (lsp-prefer-flymake :none) ;; Disable both Flymake and Flycheck because it conflicts with flycheck-golangci-lint
  (lsp-enable-completion-at-point nil)
  :hook
  (go-mode . lsp)
  :config
  (require 'lsp-clients)
  ;; LSP UI tools
  (use-package lsp-ui
    :ensure t
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
          ("C-c i" . lsp-ui-peek-find-implementation))
    :hook
    (lsp-mode . lsp-ui-mode))
  ;; Lsp completion
  (use-package company-lsp
    :ensure t
    :custom
    (company-lsp-cache-candidates t) ;; always using cache
    (company-lsp-async t)
    (company-lsp-enable-recompletion nil)))
