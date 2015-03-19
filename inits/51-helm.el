;; helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-b") 'helm-for-files)
(global-set-key (kbd "C-x b") 'helm-for-files)
(global-set-key (kbd "C-x g") 'helm-ls-git-ls)
(global-set-key (kbd "C-x w") 'helm-ghq)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-.") 'helm-gtags-select)
(global-set-key (kbd "M-,") 'helm-gtags-find-tag-from-here)
(global-set-key (kbd "M-o") 'helm-occur)
(global-set-key (kbd "M-g .") 'helm-ag)
(define-key isearch-mode-map (kbd "M-o") 'helm-occur-from-isearch)

(defun projectile-helm-ag ()
  (interactive)
  (helm-do-ag (projectile-project-root)))
(global-set-key (kbd "C-c f") 'projectile-helm-ag)
(setq helm-ag-base-command "ag --nocolor --nogroup --hidden")

(helm-descbinds-mode)
(global-set-key (kbd "M-? b") 'describe-bindings)

(require 'all-ext)
