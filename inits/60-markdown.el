(use-package markdown-mode
  :mode (("\\.text$" . gfm-mode)
         ("\\.markdown$" . gfm-mode)
         ("\\.md$" . gfm-mode)
         ("\\.apib$" . gfm-mode))
  :config
  (setq markdown-indent-on-enter nil)
  (setq markdown-gfm-use-electric-backquote nil))
