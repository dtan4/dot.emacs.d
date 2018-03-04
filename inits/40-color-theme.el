;; Color theme
(cond ((not (null window-system))
       (load-theme 'dark-laptop t t)
       (enable-theme 'dark-laptop)
       ))
(set-face-foreground 'mode-line "green")
(set-face-background 'mode-line "gray10")
(set-face-background 'mode-line-buffer-id "green")

;; http://stackoverflow.com/questions/9446673/asking-emacs-to-highlight-more-clearly-which-window-pane-has-the-focus-cursor
(set-face-attribute 'mode-line
                    nil
                    :foreground "black"
                    :background "green"
                    )

(custom-set-faces
 '(font-lock-constant-face ((t (:foreground "orange"))))
 '(font-lock-preprocessor-face ((t (:foreground "orange"))))
 '(default ((t (:foreground "gray70")))))

;; reset mode-line color
(global-set-key (kbd "C-c m")
                (lambda ()
                  (interactive)
                  (set-face-foreground 'mode-line "green")
                  (set-face-background 'mode-line "gray10")
                  (set-face-background 'mode-line-buffer-id "green")
                  )
                )
