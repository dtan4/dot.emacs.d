(use-package highlight-symbol
  :ensure t
  :config
  (use-package auto-highlight-symbol
    :ensure t
    :init
    (global-auto-highlight-symbol-mode)
    :config
    (ahs-set-idle-interval 0.3)
    (setq ahs-case-fold-search nil)))
