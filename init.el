;; reduce frequency of GC
(setq gc-cons-threshold 4194304)

;; http://www.wagavulin.jp/entry/2016/07/04/211631
(require 'package)

;;;;; add melpa and orgmode for packages
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

(package-initialize)

;; ensure to use use-package
(unless package-archive-contents
  (package-refresh-contents))
(when (not (package-installed-p 'use-package))
  (package-install 'use-package))
(require 'use-package)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; Enable environment variables for all package installations
(use-package exec-path-from-shell
  :ensure t
  :config
  (let ((envs '("PATH" "GOPATH" "GOROOT")))
    (exec-path-from-shell-initialize)
    (setq exec-path-from-shell-check-startup-files nil)
    (exec-path-from-shell-copy-envs envs)))

(use-package init-loader
  :ensure t
  :init
  (setq init-loader-show-log-after-init 'error-only)
  :config
  (init-loader-load (concat user-emacs-directory "inits")))
