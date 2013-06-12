(cd "~/")
(setq backup-inhibited t)
(setq delete-auto-save-files t)
(column-number-mode 1)
(setq scroll-step 1)
(setq transient-mark-mode t)
(setq inhibit-startup-screen t)
(setq frame-title-format
      (format "%%f - Emacs@%s" (system-name)))
(tool-bar-mode -1)
(menu-bar-mode -1)

;; imenu-auto-rescan
(setq imenu-auto-rescan t)

;; Right side bounding
(setq truncate-partial-width-windows nil)

;; chmod +x after saving shell-script file
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;; tab -> 4 spaces
(setq-default tab-width 4 indent-tabs-mode nil)
(setq c-basic-offset 4)

;; case-insensitive completation
(setq read-file-name-completion-ignore-case t)

;; add delete-trailing-whitespace to before-save-hook
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; auto-reload buffer
(global-auto-revert-mode t)

;; same name buffers
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
