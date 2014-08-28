(eval-after-load "go-mode"
  '(progn
     (require 'go-autocomplete)))

(add-hook 'before-save-hook 'gofmt-before-save)
