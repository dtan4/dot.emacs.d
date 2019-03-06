;; ref: Compatible issue with linum-mode in Emacs 26.1
;; https://github.com/syohex/emacs-git-gutter/issues/156

(use-package git-gutter
  :ensure t
  :config
  (global-git-gutter-mode t)

  ;; Emacs 25 or lower uses linum-mode
  (if (version< emacs-version "26.0")
      (git-gutter:linum-setup)))
