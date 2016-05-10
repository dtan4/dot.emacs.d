;; http://d.hatena.ne.jp/rubikitch/20080923/1222104034
(defun open-junk-file ()
  (interactive)
  (let* ((file (expand-file-name
                (format-time-string
                 "%Y-%m-%d-%H%M%S." (current-time))
                "~/Dropbox/junk/"))
         (dir (file-name-directory file)))
    (make-directory dir t)
    (find-file-other-window (read-string "Junk Code: " file))))
(global-set-key (kbd "C-c j") 'open-junk-file)
