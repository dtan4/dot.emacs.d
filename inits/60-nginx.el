(use-package nginx-mode
  :mode ("nginx\\(.*\\).conf[^/]*$" . nginx-mode)
  :config
  (setq nginx-indent-level 2))
