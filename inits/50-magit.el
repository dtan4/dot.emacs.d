;; magit.el
(require 'magit)
(add-hook 'magit-mode-hook 'ansi-color-for-comint-mode-on)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c f") 'magit-grep)

(set-face-foreground 'magit-diff-add "#b9ca4a")
(set-face-foreground 'magit-diff-del "#d54e53")
(set-face-background 'magit-item-highlight "#000000")
