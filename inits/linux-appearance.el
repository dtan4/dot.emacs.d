(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            (append (list
                     '(width . 80)
                     '(height . 40)
                     )
                    initial-frame-alist))
      (setq default-frame-alist initial-frame-alist)
      (set-scroll-bar-mode nil)))
