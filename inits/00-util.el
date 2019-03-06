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

;; tab -> 2 spaces
(setq-default tab-width 2 indent-tabs-mode nil)
(setq c-basic-offset 2)

;; case-insensitive completation
(setq read-file-name-completion-ignore-case t)

;; add delete-trailing-whitespace to before-save-hook
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; auto-reload buffer
(global-auto-revert-mode t)

;; same name buffers
(use-package uniquify
  :config
  (setq uniquify-buffer-name-style 'post-forward-angle-brackets))

;; highlight parenthesis
(setq show-paren-delay 0)
(setq show-paren-style 'single)
(show-paren-mode t)

(setq comment-style 'multi-line)

;; Create intermediate directories when saving
(add-hook 'before-save-hook
          (lambda ()
            (when buffer-file-name
              (let ((dir (file-name-directory buffer-file-name)))
                (when (and (not (file-exists-p dir))
                           (y-or-n-p (format "Directory %s does not exist. Create it?" dir)))
                  (make-directory dir t))))))

;; Show 24-hours clock in mode-line
(setq display-time-string-forms
      '((format "%s:%s"
                24-hours minutes
                )))
(display-time)

;; Add newline at the end of file
(setq require-final-newline t)

;; Follow symlinks
;; http://ymotongpoo.hatenablog.com/entry/20110206/1296983970
(setq vc-follow-symlinks t)
(setq auto-revert-check-vc-info t)

;; Enable electric-pair-mode
(electric-pair-mode 1)

;; Enable highlighting current line
;; http://rubikitch.com/2015/05/14/global-hl-line-mode-timer/
(use-package hl-line
  :config
  (defun global-hl-line-timer-function ()
    (global-hl-line-unhighlight-all)
    (let ((global-hl-line-mode t))
      (global-hl-line-highlight)))
  (setq global-hl-line-timer
        (run-with-idle-timer 0.03 t 'global-hl-line-timer-function))
  (set-face-attribute 'hl-line t :background "gray10"))

;; http://stackoverflow.com/questions/3139970/open-a-file-at-line-with-filenameline-syntax/3141456#3141456
(defadvice find-file (around find-file-line-number
                             (filename &optional wildcards)
                             activate)
  "Turn files like file.cpp:14 into file.cpp and going to the 14-th line."
  (save-match-data
    (let* ((matched (string-match "^\\(.*\\):\\([0-9]+\\):?$" filename))
           (line-number (and matched
                             (match-string 2 filename)
                             (string-to-number (match-string 2 filename))))
           (filename (if matched (match-string 1 filename) filename)))
      ad-do-it
      (when line-number
        ;; goto-line is for interactive use
        (goto-char (point-min))
        (forward-line (1- line-number))))))
