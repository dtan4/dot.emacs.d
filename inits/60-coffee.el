(defun coffee-custom ()
  "coffee-mode-hook"
  (and (set (make-local-variable 'tab-width) 2)
       (set (make-local-variable 'coffee-tab-width) 2))
  )

(add-hook 'coffee-mode-hook
          '(lambda() (coffee-custom)))

(require 'flymake-coffee)
(add-hook 'coffee-mode-hook 'flymake-coffee-load)
(setq flymake-coffee-coffeelint-configuration-file
      (expand-file-name "~/.coffeelint-config.json"))
