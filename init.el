(require 'cl)

(defvar installing-package-list
  '(
    init-loader
    ag
    all-ext
    linum
    color-theme
    revive
    color-moccur
    wdired
    auto-complete
    auto-highlight-symbol
    dash-at-point
    exec-path-from-shell
    expand-region
    foreign-regexp
    flymake-coffee
    flymake-cursor
    fringe-helper
    gist
    git-gutter-fringe
    helm
    helm-ag
    helm-git-grep
    helm-c-yasnippet
    helm-gtags
    helm-ls-git
    helm-rails
    helm-descbinds
    highlight-symbol
    htmlize
    multiple-cursors
    popwin
    direx
    smartrep
    undo-tree
    yasnippet
    yasnippet-bundle
    zeal-at-point
    autoinsert
    flymake
    magit
    smart-compile
    mmm-mode
    markdown-mode
    feature-mode
    enh-ruby-mode
    ruby-block
    ruby-end
    rspec-mode
    rhtml-mode
    haml-mode
    coffee-mode
    slim-mode
    yaml-mode
    mode-compile
    batch-mode
    ;; js2-mode
    vimrc-mode
    cperl-mode
    sass-mode
    scss-mode
    php-mode
    ;; add package
    ))

;; initialize package.el
(require 'package)
(setq package-user-dir "~/.emacs.d/elisp")
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; load all elisps under ~/.emacs.d/elisp
(let ((default-directory (expand-file-name "~/.emacs.d/elisp")))
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

;; initialize el-get
(setq el-get-dir "~/.emacs.d/elisp/el-get/")
(setq gnutls-min-prime-bits 1024)
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(el-get 'sync)

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
