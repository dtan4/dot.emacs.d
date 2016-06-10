;; C-h to Backspace
(global-set-key "\C-h" 'backward-delete-char)

;; C-c r calls revert-buffer
(global-set-key "\C-cr" 'revert-buffer)

;; disable C-x C-z and C-z (suspend-emacs)
(global-unset-key "\C-x\C-z")
(global-unset-key "\C-z")

;; disable C-x C-c (exit-emacs) -> "M-x exit" to exit Emacs
(global-unset-key "\C-x\C-c")
(defalias 'exit 'save-buffers-kill-emacs)

;; C-x p to move to previous window (inverse of C-x o)
(global-set-key "\C-xp" (lambda () (interactive) (other-window -1)))

;; Disable close-other-windows with triple ESC
(global-set-key (kbd "M-ESC ESC") 'keyboard-quit)

;; C-x <cursor> to move window
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(setq windmove-wrap-around t)

;; C-x s does the same to C-x C-s
(global-set-key (kbd "C-x s") 'save-buffer)

;; Disable IME switch by C-\
(global-set-key (kbd "C-\\") nil)
