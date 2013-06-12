(set-face-attribute 'default nil
                    :family "Ricty"
                    :height 140)
(set-fontset-font nil 'japanese-jisx0208
                  (font-spec :family "Ricty" :registry "unicode-bmp"))

;; Execute with maximum size
(defvar w32-window-state nil)
(defun w32-fullscreen-switch-frame ()
  (interactive)
  (setq w32-window-state (not w32-window-state))
  (if w32-window-state
      (w32-fullscreen-restore-frame)
    (w32-fullscreen-maximize-frame)
    ))
(defun w32-fullscreen-maximize-frame ()
  "Maximize the current frame (windows only)"
  (interactive)
  (w32-send-sys-command 61488))
(defun w32-fullscreen-restore-frame ()
  "Restore a minimized/maximized frame (windows only)"
  (interactive)
  (w32-send-sys-command 61728))
(add-hook 'window-setup-hook
          '(lambda () (w32-fullscreen-maximize-frame)))

(set-scroll-bar-mode nil)

(set-frame-parameter nil 'alpha 90)
