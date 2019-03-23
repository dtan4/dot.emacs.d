(use-package go-mode
  :ensure t
  :config
  (add-hook 'before-save-hook 'gofmt-before-save)
  (setenv "GO111MODULE" "on")

  (use-package flycheck-gometalinter
    :ensure t
    :config
    (add-hook 'go-mode-hook 'flycheck-mode)
    (eval-after-load 'flycheck
      '(add-hook 'flycheck-mode-hook #'flycheck-gometalinter-setup))
    (setq flycheck-gometalinter-vendor t)
    (setq flycheck-gometalinter-disable-all t)
    (setq flycheck-gometalinter-enable-linters '("golint" "varcheck" "vet"))
    (setq flycheck-gometalinter-deadline "30s")))
