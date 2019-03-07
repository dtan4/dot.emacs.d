;; wdired (Rename file in dired-mode)
(use-package wdired
  :config
  (define-key dired-mode-map "r"
    'wdired-change-to-wdired-mode))
