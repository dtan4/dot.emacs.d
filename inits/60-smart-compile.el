;; smart-compile
(require 'smart-compile)
(define-key ruby-mode-map (kbd "C-c c") 'smart-compile)
(define-key ruby-mode-map (kbd "C-c C-c") (kbd "C-c c C-m"))
(global-set-key (kbd "C-c x") 'kill-compilation)
(setq compilation-window-height 15)
(setq compilation-scroll-output t)
