(use-package slim-mode
  :ensure t
  :config
  (define-key slim-mode-map (kbd "<backspace>") 'delete-backward-char))
