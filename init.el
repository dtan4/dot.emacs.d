(require 'cl)

;; reduce frequency of GC
(setq gc-cons-threshold 4194304)

;; Save abbrevs silently
;; http://osdir.com/ml/emacs.jdee/2003-01/msg00064.html
(setq save-abbrevs 'silently)

(defvar installing-package-list
  '(
    init-loader
    go-mode
    ;;
    ag
    all-ext
    anzu
    apples-mode
    auto-complete
    auto-highlight-symbol
    autoinsert
    batch-mode
    coffee-mode
    color-moccur
    cperl-mode
    dockerfile-mode
    enh-ruby-mode
    exec-path-from-shell
    expand-region
    feature-mode
    flycheck
    flymake
    flymake-coffee
    flymake-cursor
    flymake-yaml
    foreign-regexp
    gist
    gitconfig-mode
    gnuplot-mode
    go-autocomplete
    go-eldoc
    groovy-mode
    haml-mode
    helm
    helm-ag
    helm-descbinds
    helm-ghq
    helm-gtags
    helm-ls-git
    helm-migemo
    helm-projectile
    helm-rails
    highlight-symbol
    hlinum
    htmlize
    ;; js2-mode
    less-css-mode
    linum
    magit
    markdown-mode
    mmm-mode
    mode-compile
    multiple-cursors
    muttrc-mode
    nginx-mode
    open-junk-file
    php-mode
    pig-mode
    popwin
    projectile-rails
    rainbow-mode
    revive
    recentf-ext
    rhtml-mode
    rspec-mode
    ruby-block
    ruby-end
    sass-mode
    scss-mode
    serverspec
    slim-mode
    smartrep
    sql-indent
    terraform-mode
    tss
    tuareg
    undo-tree
    vimrc-mode
    volatile-highlights
    wdired
    web-mode
    yaml-mode
    zeal-at-point
    zlc
    ;; add package
    ))

;; initialize package.el
(require 'package)
(setq package-user-dir (concat user-emacs-directory "elisp"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; load all elisps under ~/.emacs.d/site-lisp
(let ((default-directory (concat user-emacs-directory "site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))

(require 'init-loader)
;; http://d.hatena.ne.jp/syohex/20140706/1404637327
(custom-set-variables
 '(init-loader-show-log-after-init 'error-only))
(init-loader-load (concat user-emacs-directory "inits"))
