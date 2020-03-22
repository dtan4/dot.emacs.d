(use-package terraform-mode
  :config
  (setq terraform-indent-level 2)
  (add-hook 'terraform-mode-hook 'terraform-format-on-save-mode))
