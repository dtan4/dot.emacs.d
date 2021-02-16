(if (display-graphic-p)
    (use-package color-theme-modern
      :config
      (load-theme 'dark-laptop t t)
      (enable-theme 'dark-laptop)
      (set-face-foreground 'mode-line "white")
      (set-face-background 'mode-line "gray15")
      (set-face-background 'mode-line-inactive "black")
      (set-face-foreground 'mode-line-buffer-id "white")
      (set-face-background 'mode-line-buffer-id "black")))
