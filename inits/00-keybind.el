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
