(use-package highlight-symbol
  :ensure t
  :config
  (global-auto-highlight-symbol-mode t)
  (ahs-set-idle-interval 0.3)
  (setq ahs-case-fold-search nil))
