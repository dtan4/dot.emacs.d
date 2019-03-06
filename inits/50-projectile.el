(use-package projectile
  :ensure t
  :config
  (projectile-global-mode)
  (add-to-list 'projectile-globally-ignored-directories "Godeps")
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)  )
