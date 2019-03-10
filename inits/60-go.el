(use-package go-mode
  :ensure t
  :config
  (add-hook 'before-save-hook 'gofmt-before-save)
  (setenv "GO111MODULE" "on")

  (use-package company-go
    :ensure t
    :config
    (add-hook 'go-mode-hook (lambda ()
                              (set (make-local-variable 'company-backends) '(company-go))
                              (company-mode)
                              (indent-guide-mode -1)
                              (local-set-key (kbd "M-.") 'godef-jump)
                              (local-set-key (kbd "M-,") 'pop-tag-mark)
                              (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
                              )))

  (use-package flycheck-gometalinter
    :ensure t
    :config
    (add-hook 'go-mode-hook 'flycheck-mode)
    (eval-after-load 'flycheck
      '(add-hook 'flycheck-mode-hook #'flycheck-gometalinter-setup))
    (setq flycheck-gometalinter-vendor t)
    (setq flycheck-gometalinter-disable-all t)
    (setq flycheck-gometalinter-enable-linters '("golint" "varcheck" "vet"))
    (setq flycheck-gometalinter-deadline "30s"))

  (use-package go-eldoc
    :ensure t
    :config
    (add-hook 'go-mode-hook 'go-eldoc-setup)))
