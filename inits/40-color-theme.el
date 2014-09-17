;; Color theme
(cond ((not (null window-system))
       (add-to-list 'custom-theme-load-path
                    (file-name-as-directory "~/.emacs.d/site-lisp/replace-colorthemes/"))
       (load-theme 'dark-laptop t t)
       (enable-theme 'dark-laptop)
       ))
(set-face-foreground 'mode-line "green")
(set-face-background 'mode-line "gray10")
(set-face-background 'mode-line-buffer-id "green")
(custom-set-faces
	'(font-lock-constant-face ((t (:foreground "orange"))))
	'(font-lock-preprocessor-face ((t (:foreground "orange"))))
    '(default ((t (:foreground "green")))))

;; reset mode-line color
(global-set-key (kbd "C-c m")
                (lambda ()
                  (interactive)
                  (set-face-foreground 'mode-line "green")
                  (set-face-background 'mode-line "gray10")
                  (set-face-background 'mode-line-buffer-id "green")
                  )
                )
