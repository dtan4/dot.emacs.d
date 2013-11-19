;; PATH to the ruby installed by rbenv
(setenv "PATH" (concat (expand-file-name "~/.rbenv/shims:") (getenv "PATH")))

(setq enh-ruby-program "~/.rbenv/shims/ruby")

;; ;; emacs-pry
;; (require 'pry)
;; (global-set-key [S-f9] 'pry-intercept)
;; (global-set-key [f9] 'pry-intercept-rerun)

;; ruby-mode extension
(require 'ruby-end)
(add-hook 'enh-ruby-mode-hook
          '(lambda ()
             (abbrev-mode 1)
             (electric-pair-mode t)
             (electric-indent-mode t)
             (electric-layout-mode t)))

(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\.lock$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("config\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . enh-ruby-mode))

;; eRuby (rhtml-mode)
(require 'rhtml-mode)
(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))

;; RSpec-mode
(require 'rspec-mode)
