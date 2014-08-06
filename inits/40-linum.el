;; row-number
(require 'linum)
(require 'hlinum)
(global-linum-mode t)
(hlinum-activate)
(setq linum-format "%4d")
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))
