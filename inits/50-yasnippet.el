(use-package yasnippet
  :config
  (setq yas-snippet-dirs (append yas-snippet-dirs
                                 (expand-file-name "snippets" user-emacs-directory)))
  (yas-reload-all)
  (yas-global-mode 1))
