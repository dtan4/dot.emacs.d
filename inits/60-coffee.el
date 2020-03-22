(use-package coffee-mode
  :config
  (defun coffee-custom ()
    "coffee-mode-hook"
    (and (set (make-local-variable 'tab-width) 2)
         (set (make-local-variable 'coffee-tab-width) 2))
    )

  (add-hook 'coffee-mode-hook
            '(lambda()
               (progn
                 (coffee-custom)
                 (define-key coffee-mode-map (kbd "<backspace>") 'delete-backward-char))))

  (use-package flymake-coffee
    :config
    (add-hook 'coffee-mode-hook 'flymake-coffee-load)
    (setq flymake-coffee-coffeelint-configuration-file
          (expand-file-name "~/.coffeelint-config.json"))))
