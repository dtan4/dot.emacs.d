(defun my-autonamed-txt()
  (interactive)
  (find-file
   (concat "~/git/dtan4-memo/" (format-time-string "%Y-%m-%d_") (system-name) ".md"))
  )
(global-set-key "\C-cf" 'my-autonamed-txt)
