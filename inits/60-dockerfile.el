(autoload 'dockerfile-mode "dockerfile-mode" nil t)
(eval-after-load "dockerfile-mode"
  '(progn
     (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))))
