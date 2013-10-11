;; helm
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-for-files)
(global-set-key (kbd "C-x g") 'helm-ls-git-ls)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-.") 'helm-gtags-select)

(require 'helm-rails)
