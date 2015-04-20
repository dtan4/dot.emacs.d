(add-hook 'yaml-mode-hook 'flymake-yaml-load)

(add-to-list 'auto-mode-alist '("user-data$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yml\\.erb$" . yaml-mode))
