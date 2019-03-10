(setq my/hidden-minor-modes
      '(
        abbrev-mode
        company-mode
        eldoc-mode
        git-gutter-mode
        magit-auto-revert-mode
        ruby-block-mode
        ruby-end-mode
        rspec-mode
        volatile-highlights-mode
        ))

(mapc (lambda (mode)
        (setq minor-mode-alist
              (cons (list mode "") (assq-delete-all mode minor-mode-alist))))
      my/hidden-minor-modes)
