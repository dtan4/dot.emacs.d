(add-to-list 'auto-mode-alist '("\\.phtml$"     . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp$"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x$"   . web-mode))
(add-to-list 'auto-mode-alist '("\\html\\.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?$"     . web-mode))

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; Do not indent with paste
;; http://blog.shibayu36.org/entry/2016/03/17/183209
(add-hook 'web-mode-hook
          '(lambda ()
             (setq web-mode-enable-auto-indentation nil)))
