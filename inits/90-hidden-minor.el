(setq my/hidden-minor-modes
      '(
        abbrev-mode
        eldoc-mode
        magit-auto-revert-mode
        ruby-block-mode
        ruby-end-mode
        rspec-mode
        serverspec
        undo-tree-mode
        volatile-highlights-mode
        yas-minor-mode
        ))

(mapc (lambda (mode)
        (setq minor-mode-alist
              (cons (list mode "") (assq-delete-all mode minor-mode-alist))))
      my/hidden-minor-modes)
