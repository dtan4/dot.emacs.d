(use-package magit
  :bind (("C-c g" . magit-status)
         ("C-x v g" . magit-status)
         ("C-c b" . magit-blame)
         ("C-c l" . magit-log-buffer-file))
  :config
  (add-hook 'magit-mode-hook 'ansi-color-for-comint-mode-on)
  (eval-after-load "magit"
    '(progn
       (setq magit-blame-heading-format "%-30a %C %-40H %s") ;; original: "%-20a %C %s"
       ))
  (setq magit-push-always-verify nil)
  (setq magit-auto-revert-mode nil))
