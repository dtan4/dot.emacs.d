(defun my-autonamed-txt()
  (interactive)
  (find-file
   (concat "~/Dropbox/memo/daily/" (format-time-string "%Y-%m-%d_") (system-name) ".md"))
  )
(global-set-key "\C-cf" 'my-autonamed-txt)
