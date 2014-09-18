(eval-after-load "sql"
  '(load-library "sql-indent"))
(add-to-list 'auto-mode-alist '("\\.hql$" . sql-mode))
(setq sql-indent-offset 2)
