(use-package flymake
  :ensure t
  :bind (("M-e" . flymake-goto-next-error)
         ("M-E" . flymake-goto-prev-error))
  :config
  (setq help-at-pt-timer-delay 0.1)
  (setq help-at-pt-display-when-idle '(flymake-overlay)))
