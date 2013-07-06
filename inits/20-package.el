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
    col-highlight
    helm
    helm-c-moccur
    popwin
    yasnippet-bundle
    autoinsert
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
    ;; add package
    ))

(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))
