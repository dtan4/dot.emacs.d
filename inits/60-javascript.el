;; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;; ;; https://github.com/magnars/.emacs.d/blob/master/setup-js2-mode.el
;; (setq-default js2-global-externs '("module" "require" "buster" "sinon" "assert" "refute" "setTimeout" "clearTimeout" "setInterval" "clearInterval" "location" "__dirname" "console" "JSON" "$" "jQuery" "_" "Backbone" "dojo" "ko"))

(setq js-indent-level 2)

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
