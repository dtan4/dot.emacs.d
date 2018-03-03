(add-to-list 'auto-mode-alist '("Projectfile$" . crystal-mode))

(add-hook 'crystal-mode-hook 'ruby-end-mode)
(add-hook 'crystal-mode-hook 'electric-pair-mode)
(add-hook 'crystal-mode-hook 'electric-indent-mode)
(add-hook 'crystal-mode-hook 'electric-layout-mode)
