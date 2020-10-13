(use-package flycheck
  :bind (("C-c C-n" . flycheck-next-error)
         ("C-c C-p" . flycheck-previous-error)
         ("C-c C-l" . flycheck-list-errors))
  :hook
  (sh-mode . flycheck-mode)
  :config
  (setq flycheck-check-syntax-automatically '(mode-enabled save)))
