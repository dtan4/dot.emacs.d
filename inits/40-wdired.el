;; wdired (Rename file in dired-mode)
(require 'wdired)
(define-key dired-mode-map "r"
  'wdired-change-to-wdired-mode)
