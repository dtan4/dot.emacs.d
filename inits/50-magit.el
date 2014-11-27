(add-hook 'magit-mode-hook 'ansi-color-for-comint-mode-on)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-x v g") 'magit-status)
(global-set-key (kbd "C-c b") 'magit-blame-mode)
(global-set-key (kbd "C-c l") 'magit-file-log)

(eval-after-load "magit"
  '(progn
     (set-face-foreground 'magit-diff-add "#b9ca4a")
     (set-face-foreground 'magit-diff-del "#d54e53")
     (set-face-background 'magit-item-highlight "#000000")))

(require 'magit-gh-pulls)
(add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)
