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
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; highlight parenthesis
(setq show-paren-delay 0)
(setq show-paren-style 'single)
(show-paren-mode t)

;; Bind M-u to toggle camelCase and snake_case
(global-set-key (kbd "M-u") 'ik:camerize<->decamelize-on-region)
(defun ik:decamelize (string)
  "Convert from CamelCaseString to camel_case_string."
  (let ((case-fold-search nil))
    (downcase
     (replace-regexp-in-string
      "\\([A-Z]+\\)\\([A-Z][a-z]\\)" "\\1_\\2"
      (replace-regexp-in-string
       "\\([a-z\\d]\\)\\([A-Z]\\)" "\\1_\\2"
       string)))))
(defun ik:camerize<->decamelize-on-region (s e)
  (interactive "r")
  (let ((buf-str (buffer-substring-no-properties s e))
        (case-fold-search nil))
    (cond
     ((string-match "_" buf-str)
      (let* ((los (mapcar 'capitalize (split-string buf-str "_" t)))
             (str (mapconcat 'identity los "")))
        ;; snake case to camel case
        (delete-region s e)
        (insert str)))
     (t
      (let* ((str (ik:decamelize buf-str)))
        ;; snake case to camel case
        (delete-region s e)
        (insert str))))))

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
