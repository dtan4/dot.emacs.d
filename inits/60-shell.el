(use-package sh-mode
  :straight nil
  :mode ((".envrc$" . sh-mode)
         (".env$" . sh-mode)
         (".env.sample$" . sh-mode))
  :custom
  (sh-basic-offset 2)
  (sh-indentation 2))
