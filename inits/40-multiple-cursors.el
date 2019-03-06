(use-package multiple-cursors
  :ensure t
  :config
  (global-set-key (kbd "C-M-c") 'mc/edit-lines)
  (use-package smartrep
    :ensure t
    :config
    (smartrep-define-key
        global-map "C-." '(("n" . 'mc/mark-next-like-this)
                           ("p" . 'mc/mark-previous-like-this)
                           ("s" . 'mc/skip-to-next-like-this)
                           ("S" . 'mc/skip-to-previous-like-this)
                           ("*" . 'mc/mark-all-like-this)))))
