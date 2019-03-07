(use-package color-theme-modern
  :ensure t
  :config
  (cond ((not (null window-system))
         (load-theme 'dark-laptop t t)
         (enable-theme 'dark-laptop)
         ))
  (set-face-foreground 'mode-line "green")
  (set-face-background 'mode-line "gray10")
  (set-face-attribute 'font-lock-constant-face t :foreground "orange")
  (set-face-attribute 'font-lock-preprocessor-face t :foreground "orange")
  (set-face-attribute 'default nil :foreground "gray70"))
