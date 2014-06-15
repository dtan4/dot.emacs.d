(projectile-global-mode)

(setq projectile-rails-keymap-prefix (kbd "C-c ;"))
(add-hook 'projectile-mode-hook 'projectile-rails-on)
