(autoload 'dockerfile-mode "docker-file-mode" nil t)
(eval-after-load "docker-file-mode"
  '(progn
     (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))))
