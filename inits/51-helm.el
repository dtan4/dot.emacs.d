(use-package helm
  ;; load helm package immediately
  ;; Without this, "C-x w" doesn't work after Emacs launched
  :demand t
  :bind (("M-x" . helm-M-x)
         ("C-x C-b" . helm-for-files)
         ("C-x b" . helm-for-files)
         ("C-x c i" . helm-imenu)
         ("M-y" . helm-show-kill-ring)
         ("M-o" . helm-occur))
  :config
  (define-key isearch-mode-map (kbd "M-o") 'helm-occur-from-isearch)
  (use-package helm-ag
    :bind ("M-g ." . helm-ag))
  (use-package helm-ghq
    :bind ("C-x w" . helm-ghq))
  (use-package helm-gtags
    :bind (("M-." . helm-gtags-select)
           ("M-," . helm-gtags-find-tag-from-here)))
  (use-package helm-ls-git
    :bind ("C-x g" . helm-ls-git-ls))
  (use-package helm-projectile
    :config
    (defun projectile-helm-ag ()
      (interactive)
      (helm-do-ag (projectile-project-root)))
    (global-set-key (kbd "C-c f") 'projectile-helm-ag)
    (setq helm-ag-base-command "ag --nocolor --nogroup --hidden")))
