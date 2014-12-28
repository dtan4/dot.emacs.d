;; helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-b") 'helm-for-files)
(global-set-key (kbd "C-x b") 'helm-for-files)
(global-set-key (kbd "C-c f") 'helm-git-grep)
(global-set-key (kbd "C-x g") 'helm-ls-git-ls)
(global-set-key (kbd "C-x w") 'helm-ghq)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-.") 'helm-gtags-select)
(global-set-key (kbd "M-o") 'helm-occur)
(global-set-key (kbd "M-g .") 'helm-ag)
(define-key isearch-mode-map (kbd "M-o") 'helm-occur-from-isearch)

(helm-descbinds-mode)
(global-set-key (kbd "M-? b") 'describe-bindings)

;; http://rubikitch.com/2014/12/19/helm-migemo/
(require 'helm-migemo)
(eval-after-load "helm-migemo"
  '(defun helm-compile-source--candidates-in-buffer (source)
     (helm-aif (assoc 'candidates-in-buffer source)
         (append source
                 `((candidates
                    . ,(or (cdr it)
                           (lambda ()
                             ;; Do not use `source' because other plugins
                             ;; (such as helm-migemo) may change it
                             (helm-candidates-in-buffer (helm-get-current-source)))))
                   (volatile) (match identity)))
       source)))

(require 'all-ext)
