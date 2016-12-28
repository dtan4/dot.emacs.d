(add-hook 'magit-mode-hook 'ansi-color-for-comint-mode-on)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-x v g") 'magit-status)
(global-set-key (kbd "C-c b") 'magit-blame)
(global-set-key (kbd "C-c l") 'magit-log-buffer-file)

(eval-after-load "magit"
  '(progn
     (set-face-foreground 'magit-blame-heading "cyan")
     (set-face-foreground 'magit-blame-date "white")
     (set-face-foreground 'magit-blame-hash "yellow")
     (set-face-foreground 'magit-blame-name "green")
     (setq magit-blame-heading-format "%-30a %C %-40H %s") ;; original: "%-20a %C %s"
     ))

(setq magit-push-always-verify nil)

(setq magit-auto-revert-mode nil)
