(require 'cl)

;; reduce frequency of GC
(setq gc-cons-threshold 4194304)

(defvar installing-package-list
  '(
    init-loader
    ag
    all-ext
    apples-mode
    auto-complete
    auto-highlight-symbol
    autoinsert
    batch-mode
    coffee-mode
    color-moccur
    color-theme
    cperl-mode
    dash-at-point
    direx
    dockerfile-mode
    enh-ruby-mode
    esup
    exec-path-from-shell
    expand-region
    feature-mode
    flymake
    flymake-coffee
    flymake-cursor
    foreign-regexp
    fringe-helper
    gist
    gitconfig-mode
    git-gutter-fringe
    gnuplot-mode
    haml-mode
    helm
    helm-ag
    helm-descbinds
    helm-git-grep
    helm-gtags
    helm-ls-git
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
    nginx-mode
    open-junk-file
    php-mode
    popwin
    projectile-rails
    quickrun
    revive
    recentf-ext
    rhtml-mode
    rspec-mode
    ruby-block
    ruby-end
    sass-mode
    scss-mode
    slim-mode
    smartrep
    tss
    undo-tree
    vimrc-mode
    wdired
    yaml-mode
    zeal-at-point
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

(defvar installing-package-list-el-get
  )

;; initialize el-get
;; (setq el-get-dir "~/.emacs.d/elisp/el-get/")
;; (setq gnutls-min-prime-bits 1024)
;; (unless (require 'el-get nil 'noerror)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
;;     (goto-char (point-max))
;;     (eval-print-last-sexp)))

;; (el-get 'sync '(
;;                 wanderlust
;;                 ))

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load (concat user-emacs-directory "inits"))
