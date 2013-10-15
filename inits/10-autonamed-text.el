(defun my-autonamed-txt()
  (interactive)
  (find-file
   (concat "~/Dropbox/memo/daily/" (format-time-string "%Y-%m-%d") ".md"))
  )
(global-set-key (kbd "C-c d") 'my-autonamed-txt)
