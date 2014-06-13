;; YASnippet
(require 'yasnippet)
(setq yas-snippet-dirs (concat user-emacs-directory "snippets"))
(yas-global-mode 1)
(custom-set-variables '(yas-trigger-key "TAB"))

(global-set-key (kbd "C-x y i") 'yas-insert-snippet)
(global-set-key (kbd "C-x y n") 'yas-new-snippet)
(global-set-key (kbd "C-x y v") 'yas-visit-snippet-file)

;; Disable flymake when expanding YASnippet
;; (defvar flymake-is-active-flag nil)
;; (defadvice yas/expand-snippet
;;   (before inhibit-flymake-syntax-checking-while-expanding-snippet activate)
;;   (setq flymake-is-active-flag
;;         (or flymake-is-active-flag
;;             (assoc-default 'flymake-mode (buffer-local-variables))))
;;   (when flymake-is-active-flag
;;     (flymake-mode-off)))
;; (add-hook 'yas/after-exit-snippet-hook
;;           '(lambda ()
;;              (when flymake-is-active-flag
;;                (flymake-mode-on)
;;                (setq flymake-is-active-flag nil))))
