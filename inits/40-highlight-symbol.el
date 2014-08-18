(global-auto-highlight-symbol-mode t)
(ahs-set-idle-interval 0.1)
(setq ahs-case-fold-search nil)

(global-set-key (kbd "<f3>") 'highlight-symbol-at-point)
(global-set-key (kbd "M-<f3>") 'highlight-symbol-remove-all)
