(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq js-indent-level 2)

;; http://blog.kyanny.me/entry/2015/02/28/001429
(defun my-js-mode-hook ()
  (setq-local electric-layout-rules
              '((?\{ . after) (?\} . before))))
(add-hook 'js-mode-hook 'my-js-mode-hook)

(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

(require 'flycheck)
(flycheck-define-checker jsxhint-checker
                         "A JSX syntax and style checker based on JSXHint."

                         :command ("jsxhint" source)
                         :error-patterns
                         ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
                         :modes (web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (equal web-mode-content-type "jsx")
              ;; enable flycheck
              (flycheck-select-checker 'jsxhint-checker)
              (flycheck-mode))))
