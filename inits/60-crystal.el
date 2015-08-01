(add-to-list 'auto-mode-alist '("Projectfile$" . crystal-mode))

(require 'ruby-block)
(setq ruby-block-highlight-toggle t)
(setq ruby-block-delay 0.1)

(add-hook 'crystal-mode-hook 'ruby-block-mode)
(add-hook 'crystal-mode-hook 'ruby-end-mode)
(add-hook 'crystal-mode-hook 'electric-pair-mode)
(add-hook 'crystal-mode-hook 'electric-indent-mode)
(add-hook 'crystal-mode-hook 'electric-layout-mode)
