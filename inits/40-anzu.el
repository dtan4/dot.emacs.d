(use-package anzu
  :ensure t
  :bind (("M-%" . anzu-query-replace)
         ("C-M-%" . anzu-query-replace-regexp))
  :config
  (global-anzu-mode +1)
  (setq anzu-mode-lighter "")
  (setq anzu-deactivate-region t)
  (setq anzu-search-threshold 1000))
