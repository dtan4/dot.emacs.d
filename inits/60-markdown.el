;; markdown-mode
(add-to-list 'auto-mode-alist '("\\.text$" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.apib$" . gfm-mode))

(define-key markdown-mode-map (kbd "C-<tab>") 'markdown-table-align)

(setq markdown-indent-on-enter nil)
(setq markdown-gfm-use-electric-backquote nil)
