(use-package highlight-symbol)

(use-package auto-highlight-symbol
  :requires highlight-symbol
  :init
  (global-auto-highlight-symbol-mode)
  :config
  (ahs-set-idle-interval 0.3)
  (setq ahs-case-fold-search nil))
