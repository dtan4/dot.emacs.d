;; markdown-mode
(add-to-list 'auto-mode-alist '("\\.text$" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . gfm-mode))

(setq markdown-indent-on-enter nil)
(setq markdown-gfm-use-electric-backquote nil)
