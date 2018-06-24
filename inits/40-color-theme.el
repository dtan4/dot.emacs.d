;; Color theme
(cond ((not (null window-system))
       (load-theme 'dark-laptop t t)
       (enable-theme 'dark-laptop)
       ))
(set-face-foreground 'mode-line "green")

(custom-set-faces
 '(font-lock-constant-face ((t (:foreground "orange"))))
 '(font-lock-preprocessor-face ((t (:foreground "orange"))))
 '(default ((t (:foreground "gray70")))))
