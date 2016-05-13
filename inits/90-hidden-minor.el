(setq my/hidden-minor-modes
      '(
        abbrev-mode
        eldoc-mode
        magit-auto-revert-mode
        ruby-block-mode
        ruby-end-mode
        rspec-mode
        undo-tree-mode
        volatile-highlights-mode
        ))

(mapc (lambda (mode)
        (setq minor-mode-alist
              (cons (list mode "") (assq-delete-all mode minor-mode-alist))))
      my/hidden-minor-modes)
