(use-package nginx-mode
  :ensure t
  :mode ("nginx\\(.*\\).conf[^/]*$" . nginx-mode)
  :config
  (setq nginx-indent-level 2))
