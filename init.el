
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cl)

;; reduce frequency of GC
(setq gc-cons-threshold 4194304)

;; http://d.hatena.ne.jp/tarao/20150221/1424518030
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get-bundle tarao/el-get-lock :checkout "5a6c7d4eddaaf1402e9344e30628a3e57affeb54")
(el-get-lock)

;; Enable environment variables for all package installations
(el-get-bundle exec-path-from-shell)
(let ((envs '("PATH" "GOPATH")))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-envs envs))

(el-get-bundle ag)
(el-get-bundle anzu)
(el-get-bundle auto-highlight-symbol)
(el-get-bundle coffee-mode)
(el-get-bundle color-moccur)
(el-get-bundle company-mode)
(el-get-bundle dockerfile-mode)
(el-get-bundle emacs-jp/replace-colorthemes)
(el-get-bundle enh-ruby-mode)
(el-get-bundle expand-region)
(el-get-bundle feature-mode)
(el-get-bundle flycheck/flycheck)
(el-get-bundle flycheck-gometalinter)
(el-get-bundle flymake)
(el-get-bundle flymake-coffee)
(el-get-bundle flymake-cursor)
;; (el-get-bundle foreign-regexp)
(el-get-bundle git-gutter)
(el-get-bundle gnuplot-mode)
(el-get-bundle go-company)
(el-get-bundle go-eldoc)
(el-get-bundle go-mode :checkout "v1.4.0")
(el-get-bundle Groovy-Emacs-Modes/groovy-emacs-modes :type github)
(el-get-bundle haml-mode)
(el-get-bundle helm :checkout "v2.3.3")
(el-get-bundle helm-ag)
(el-get-bundle helm-ghq)
(el-get-bundle helm-gtags)
(el-get-bundle helm-ls-git)
(el-get-bundle helm-projectile)
(el-get-bundle highlight-symbol)
(el-get-bundle htmlize)
(el-get-bundle indent-guide)
(el-get-bundle init-loader)
(el-get-bundle jpellerin/emacs-crystal-mode)
(el-get-bundle json-mode)
(el-get-bundle less-css-mode)
(el-get-bundle magit/magit
  :type github
  :checkout "2.9.0"
  :load-path "lisp/"
  :compile "lisp/"
  :build `(("make" ,(format "EMACSBIN=%s" el-get-emacs) "docs")
           ("touch" "lisp/magit-autoloads.el"))
  :build/berkeley-unix `(("gmake" ,(format "EMACSBIN=%s" el-get-emacs) "docs")
                         ("touch" "lisp/magit-autoloads.el"))
  :build/windows-nt (with-temp-file "lisp/magit-autoloads.el" nil)
  )
(el-get-bundle markdown-mode)
(el-get-bundle mmm-mode)
(el-get-bundle multiple-cursors)
(el-get-bundle nginx-mode)
(el-get-bundle php-mode)
(el-get-bundle popwin)
(el-get-bundle powerline)
;; (el-get-bundle rainbow-mode)
(el-get-bundle recentf-ext)
(el-get-bundle rhtml-mode)
(el-get-bundle rspec-mode)
(el-get-bundle ruby-block)
(el-get-bundle ruby-end)
(el-get-bundle sass-mode)
(el-get-bundle scss-mode)
(el-get-bundle slim-mode)
(el-get-bundle smartrep)
(el-get-bundle syohex/emacs-hcl-mode)
(el-get-bundle terraform-mode)
(el-get-bundle toml-mode)
(el-get-bundle undo-tree)
(el-get-bundle vimrc-mode)
(el-get-bundle volatile-highlights)
(el-get-bundle web-mode)
(el-get-bundle yaml-mode)
(el-get-bundle yasnippet :branch "master")
(el-get-bundle yatex)
(el-get-bundle zlc)

(require 'init-loader)
;; http://d.hatena.ne.jp/syohex/20140706/1404637327
(custom-set-variables
 '(init-loader-show-log-after-init 'error-only))
(init-loader-load (concat user-emacs-directory "inits"))
