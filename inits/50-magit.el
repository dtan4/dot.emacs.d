(add-hook 'magit-mode-hook 'ansi-color-for-comint-mode-on)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-x v g") 'magit-status)
(global-set-key (kbd "C-c b") 'magit-blame-mode)
(global-set-key (kbd "C-c l") 'magit-file-log)

;; magit 1.4.0 or above
(setq magit-auto-revert-mode nil)

;; Suppress magit 1.4.0 instruction
(setq magit-last-seen-setup-instructions "1.4.0")
