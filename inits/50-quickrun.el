;; http://konbu13.hatenablog.com/entry/2014/02/15/231028
(eval-after-load "quickrun"
  '(progn
     (push '("*quickrun*") popwin:special-display-config)))

(defun my-quickrun-output-fix ()
  (interactive)
  (quickrun)
  (sit-for 0.5)
  (beginning-of-buffer)
  (sit-for 0.5)
  (end-of-buffer)
  )
(global-set-key (kbd "C-\\") 'my-quickrun-output-fix)
