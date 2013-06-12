;; Color theme
(cond ((not (null window-system))
       (require 'color-theme)
       (color-theme-initialize)
       (color-theme-dark-laptop)
       ))
(add-to-list 'default-frame-alist '(foreground-color . "green"))
(set-face-foreground 'mode-line "green")
(set-face-background 'mode-line "gray10")
(set-face-background 'mode-line-buffer-id "green")
(custom-set-faces
	'(font-lock-constant-face ((t (:foreground "orange"))))
	'(font-lock-preprocessor-face ((t (:foreground "orange")))))))
