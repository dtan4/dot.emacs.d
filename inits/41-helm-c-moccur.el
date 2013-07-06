(require 'helm-c-moccur)
(global-set-key (kbd "M-o") 'helm-c-moccur-occur-by-moccur)
(global-set-key (kbd "C-M-o") 'helm-c-moccur-dmoccur)
(define-key isearch-mode-map (kbd "M-o") 'helm-c-moccur-from-isearch)

(defun dired-mode-hook-for-helm-c-moccur ()
  (local-set-key (kbd "O") 'helm-c-moccur-dired-do-moccur-by-moccur))
(add-hook 'dired-mode-hook 'dired-mode-hook-for-helm-c-moccur)
