(add-hook 'go-mode-hook (lambda ()
                          (indent-guide-mode -1)
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
                          ))

(add-hook 'before-save-hook 'gofmt-before-save)

;; (add-hook 'go-mode-hook 'flycheck-mode)
;; (eval-after-load 'flycheck
;;   '(add-hook 'flycheck-mode-hook #'flycheck-gometalinter-setup))

;; (setq flycheck-gometalinter-vendor t)
;; (setq flycheck-gometalinter-disable-all t)
;; (setq flycheck-gometalinter-enable-linters '("golint" "varcheck" "vet"))
;; (setq flycheck-gometalinter-deadline "30s")

(setenv "GO111MODULE" "on")

(add-hook 'go-mode-hook #'lsp)
