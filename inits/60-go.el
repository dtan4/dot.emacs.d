(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)
                          (indent-guide-mode -1)
                          (local-set-key (kbd "M-.") 'godef-jump)
                          (local-set-key (kbd "M-,") 'pop-tag-mark)
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
                          ))

(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook 'flycheck-mode)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-gometalinter-setup))

(add-hook 'go-mode-hook 'go-eldoc-setup)

(setq flycheck-gometalinter-vendor t)
(setq flycheck-gometalinter-fast t)
