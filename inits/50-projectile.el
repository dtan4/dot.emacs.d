(use-package projectile
  :init
  (projectile-global-mode)
  :config
  (add-to-list 'projectile-globally-ignored-directories "Godeps")
  (add-to-list 'projectile-project-root-files "go.mod")
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))
