(require 'uim)
(uim-mode)
(setq uim-lang-code-alist
      (cons '("Japanese" "Japanese" utf-8 "UTF-8")
            (delete (assoc "Japanese" uim-lang-code-alist)
                    uim-lang-code-alist)))
(global-set-key [zenkaku-hankaku] 'uim-mode)
(global-set-key (kbd "s-`") 'uim-mode)
(add-hook 'uim-load-hook
          '(lambda ()
             (define-key uim-mode-map [67108896] nil)
             (define-key uim-mode-map [0] nil)))
(setq uim-candidate-display-inline t)
