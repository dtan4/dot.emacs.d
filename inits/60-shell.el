(use-package sh-mode
  :mode ((".envrc$" . sh-mode)
         (".env$" . sh-mode)
         (".env.sample$" . sh-mode))
  :config
  (setq sh-basic-offset 2)
  (setq sh-indentation 2))
