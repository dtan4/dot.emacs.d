;; ref: Compatible issue with linum-mode in Emacs 26.1
;; https://github.com/syohex/emacs-git-gutter/issues/156

(use-package git-gutter
  :init
  (global-git-gutter-mode)
  :config
  ;; Emacs 25 or lower uses linum-mode
  (if (version< emacs-version "26.0")
      (git-gutter:linum-setup)))
