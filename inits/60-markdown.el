;; markdown-mode
(autoload 'gfm-mode "gfm-mode"
  "Major mode for editing Github Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))

(setq markdown-indent-on-enter nil)
