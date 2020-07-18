(use-package sql-indent
  :hook
  (sql-mode . sqlind-minor-mode)
  :config
  (setq sql-indent-offset 2))
