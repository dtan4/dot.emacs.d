(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "C->") 'er/expand-region)
  (global-set-key (kbd "C-<") 'er/contract-region))
