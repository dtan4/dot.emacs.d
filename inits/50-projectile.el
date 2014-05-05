(require 'projectile)
(projectile-global-mode)

(setq projectile-rails-keymap-prefix (kbd "C-c ;"))
(require 'projectile-rails)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
