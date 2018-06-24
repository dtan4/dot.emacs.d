;; reduce frequency of GC
(setq gc-cons-threshold 4194304)

;; http://www.wagavulin.jp/entry/2016/07/04/211631
(require 'package)

;;;;; add melpa and orgmode for packages
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

(package-initialize)

;;
;; NOTE 2018/03/03
;; - replace-colorthemes is not registered both gnu and melpa
;; - ruby-block no longer exists
;;
(defvar packages
  '(ag
    anzu
    auto-highlight-symbol
    coffee-mode
    color-moccur
    color-theme-modern
    company
    company-go
    dockerfile-mode
    enh-ruby-mode
    exec-path-from-shell
    expand-region
    feature-mode
    flycheck
    flycheck-gometalinter
    flymake
    flymake-coffee
    flymake-cursor
    git-gutter
    gnuplot-mode
    go-eldoc
    go-mode
    groovy-mode
    haml-mode
    helm
    helm-ag
    helm-ghq
    helm-gtags
    helm-ls-git
    helm-projectile
    highlight-symbol
    htmlize
    indent-guide
    init-loader
    json-mode
    less-css-mode
    magit
    markdown-mode
    mmm-mode
    mozc
    mozc-im
    multiple-cursors
    nginx-mode
    php-mode
    ;; popwin
    rhtml-mode
    rspec-mode
    ruby-end
    rust-mode
    sass-mode
    scss-mode
    slim-mode
    smart-mode-line
    smartrep
    terraform-mode
    toml-mode
    undo-tree
    vimrc-mode
    volatile-highlights
    web-mode
    yaml-mode
    yasnippet
    zlc)
  "package to be installed")

(unless package-archive-contents (package-refresh-contents))
(dolist (pkg packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

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
