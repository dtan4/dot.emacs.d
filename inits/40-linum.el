;; row-number
(require 'linum)
(global-linum-mode t)
(setq linum-format "%4d")
;; (setq linum-delay t)
;; (defadvice linum-schedule (around my-linum-schedule () activate)
;;   (run-with-idle-timer 0.2 nil #'linum-update-current))
