(setq flycheck-check-syntax-automatically '(mode-enabled save))

(global-set-key (kbd "C-c C-n") 'flycheck-next-error)
(global-set-key (kbd "C-c C-p") 'flycheck-previous-error)
(global-set-key (kbd "C-c C-l") 'flycheck-list-errors)
