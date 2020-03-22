(use-package highlight-symbol
  :config
  (use-package auto-highlight-symbol
    :init
    (global-auto-highlight-symbol-mode)
    :config
    (ahs-set-idle-interval 0.3)
    (setq ahs-case-fold-search nil)))
