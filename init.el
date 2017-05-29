
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(if (eq system-type 'darwin)
    (require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
  (require 'cask "~/.cask/cask.el"))
(cask-initialize)

;; reduce frequency of GC
(setq gc-cons-threshold 4194304)

;; Enable environment variables for all package installations
(let ((envs '("PATH" "GOPATH" "GOROOT")))
  (exec-path-from-shell-initialize)
  (setq exec-path-from-shell-check-startup-files nil)
  (exec-path-from-shell-copy-envs envs))

(require 'init-loader)
;; http://d.hatena.ne.jp/syohex/20140706/1404637327
(custom-set-variables
 '(init-loader-show-log-after-init 'error-only))
(init-loader-load (concat user-emacs-directory "inits"))
