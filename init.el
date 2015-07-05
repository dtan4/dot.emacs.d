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

(el-get-bundle tarao/el-get-lock)
(el-get-lock)

(el-get-bundle elpa:let-alist)

(el-get-bundle ag)
(el-get-bundle anzu)
(el-get-bundle apples-mode)
(el-get-bundle auto-complete)
(el-get-bundle auto-highlight-symbol)
(el-get-bundle batch-mode)
(el-get-bundle coffee-mode)
(el-get-bundle color-moccur)
(el-get-bundle cperl-mode)
(el-get-bundle dockerfile-mode)
(el-get-bundle emacs-jp/replace-colorthemes)
;; (el-get-bundle emacsmirror/yatex)
(el-get-bundle enh-ruby-mode)
(el-get-bundle exec-path-from-shell)
(el-get-bundle expand-region)
(el-get-bundle feature-mode)
(el-get-bundle flycheck/flycheck)
(el-get-bundle flymake)
(el-get-bundle flymake-coffee)
(el-get-bundle flymake-cursor)
(el-get-bundle flymake-yaml)
(el-get-bundle foreign-regexp)
(el-get-bundle gitconfig-mode)
(el-get-bundle git-gutter)
(el-get-bundle gnuplot-mode)
(el-get-bundle go-autocomplete)
(el-get-bundle go-eldoc)
(el-get-bundle go-mode)
(el-get-bundle groovy-mode)
(el-get-bundle haml-mode)
(el-get-bundle helm)
(el-get-bundle helm-ag)
(el-get-bundle helm-descbinds)
(el-get-bundle helm-ghq)
(el-get-bundle helm-gtags)
(el-get-bundle helm-ls-git)
(el-get-bundle helm-migemo)
(el-get-bundle helm-projectile)
(el-get-bundle helm-rails)
(el-get-bundle highlight-symbol)
(el-get-bundle htmlize)
(el-get-bundle init-loader)
(el-get-bundle json-mode)
(el-get-bundle less-css-mode)
(el-get-bundle magit :branch "master")
(el-get-bundle markdown-mode)
(el-get-bundle mmm-mode)
(el-get-bundle mode-compile)
(el-get-bundle multiple-cursors)
(el-get-bundle muttrc-mode)
(el-get-bundle nginx-mode)
(el-get-bundle open-junk-file)
(el-get-bundle php-mode)
(el-get-bundle pig-mode)
(el-get-bundle popwin)
(el-get-bundle projectile-rails)
(el-get-bundle rainbow-mode)
;; 2015-06-22
;; Error (el-get): while installing revive: Checksum verification failed. Required: "bf86576fbff406de4759fad7794f435c89f68be9", actual: "2832fdcdc9fca090a62bb10177c723ec690b4c4a".
;; (el-get-bundle revive)
(el-get-bundle recentf-ext)
(el-get-bundle rhtml-mode)
(el-get-bundle rspec-mode)
(el-get-bundle ruby-block)
(el-get-bundle ruby-end)
(el-get-bundle sass-mode)
(el-get-bundle scss-mode)
(el-get-bundle serverspec)
(el-get-bundle slim-mode)
(el-get-bundle smartrep)
(el-get-bundle sql-indent)
(el-get-bundle terraform-mode)
(el-get-bundle tss)
(el-get-bundle tuareg)
(el-get-bundle undo-tree)
(el-get-bundle vimrc-mode)
(el-get-bundle volatile-highlights)
(el-get-bundle wdired)
(el-get-bundle web-mode)
(el-get-bundle yaml-mode)
(el-get-bundle zeal-at-point)
(el-get-bundle zlc)

(require 'init-loader)
;; http://d.hatena.ne.jp/syohex/20140706/1404637327
(custom-set-variables
 '(init-loader-show-log-after-init 'error-only))
(init-loader-load (concat user-emacs-directory "inits"))
