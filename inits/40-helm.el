;; helm
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-b") 'helm-for-files)
(global-set-key (kbd "C-x b") 'helm-for-files)
(global-set-key (kbd "C-x g") 'helm-ls-git-ls)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-.") 'helm-gtags-select)
(global-set-key (kbd "M-o") 'helm-occur)
(define-key isearch-mode-map (kbd "M-o") 'helm-occur-from-isearch)

(require 'helm-rails)

(helm-descbinds-mode)
(global-set-key (kbd "M-? b") 'describe-bindings)
