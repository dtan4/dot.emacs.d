;; ;; anything.el
;; (require 'anything-startup)
;; (defun anything-default-display-buffer (buf)
;;   (if anything-samewindow
;;       (switch-to-buffer buf)
;;     (progn
;;       (delete-other-windows)
;;       (split-window (selected-window) nil t)
;;       (pop-to-buffer buf))))
