(use-package web-mode
  :mode (("\\.phtml$" . web-mode)
         ("\\.tpl\\.php$" . web-mode)
         ("\\.jsp$" . web-mode)
         ("\\.as[cp]x$" . web-mode)
         ("\\html\\.erb$" . web-mode)
         ("\\.html?$" . web-mode)
         ("\\.js?$" . web-mode)
         ("\\.jsx$" . web-mode))
  :config
  (setq js-indent-level 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)

  (defadvice web-mode-highlight-part (around tweak-jsx activate)
    (if (equal web-mode-content-type "jsx")
        (let ((web-mode-enable-part-face nil))
          ad-do-it)
      ad-do-it))

  ;; Do not indent with paste
  ;; http://blog.shibayu36.org/entry/2016/03/17/183209
  (add-hook 'web-mode-hook
            '(lambda ()
               (setq web-mode-enable-auto-indentation nil)))

  (use-package flycheck
    :config
    (flycheck-define-checker jsxhint-checker
      "A JSX syntax and style checker based on JSXHint."

      :command ("jsxhint" source)
      :error-patterns
      ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
      :modes (web-mode))

    (add-hook 'web-mode-hook
              (lambda ()
                (flycheck-add-mode 'javascript-eslint 'web-mode)
                (flycheck-mode)))

    (add-hook 'web-mode-hook
              (lambda ()
                (when (equal web-mode-content-type "jsx")
                  ;; enable flycheck
                  (flycheck-select-checker 'jsxhint-checker)
                  (flycheck-mode))))))
