(require 'cl)

(defvar installing-package-list
  '(
    ag
    linum
    color-theme
    revive
    color-moccur
    wdired
    auto-complete
    auto-highlight-symbol
    exec-path-from-shell
    foreign-regexp
    gist
    helm
    helm-gtags
    helm-ls-git
    helm-rails
    helm-descbinds
    popwin
    direx
    undo-tree
    yasnippet
    yasnippet-bundle
    autoinsert
    flymake
    magit
    smart-compile
    mmm-mode
    markdown-mode
    feature-mode
    ruby-end
    rspec-mode
    rhtml-mode
    haml-mode
    coffee-mode
    slim-mode
    yaml-mode
    mode-compile
    batch-mode
    js2-mode
    vimrc-mode
    cperl-mode
    sass-mode
    scss-mode
    ;; add package
    ))

(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))
