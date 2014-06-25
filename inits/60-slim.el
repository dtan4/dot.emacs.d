(add-hook 'slim-mode-hook
          '(lambda ()
             (define-key slim-mode-map (kbd "<backspace>") 'delete-backward-char)))
(add-hook 'slim-mode-hook 'auto-complete-mode)
