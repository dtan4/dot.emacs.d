;; auto-insert-mode
(require 'autoinsert)
(setq auto-insert-directory "~/.emacs.d/template")
;; 各ファイルによってテンプレートを切り替える
(setq auto-insert-alist
      (nconc '(
               ("\\.cpp$" . ["template.cpp" my-template])
               ("\\.c$" . ["template.c" my-template])
               ("\\.tex$" . ["template.tex" my-template])
               ("\\.java$" . ["template.java" my-template])
               ("\\.rb$" . ["template.rb" my-template])
               ("\\.pl$" . ["template.pl" my-template])
               ) auto-insert-alist))
(require 'cl)
(defvar template-replacements-alists
  '(("%file%"             . (lambda () (file-name-nondirectory (buffer-file-name))))
    ("%file-without-ext%" . (lambda () (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))))))
(defun my-template ()
  (time-stamp)
  (mapc #'(lambda(c)
            (progn
              (goto-char (point-min))
              (replace-string (car c) (funcall (cdr c)) nil)))
        template-replacements-alists)
  (goto-char (point-max))
  (message "done."))
(add-hook 'find-file-not-found-hooks 'auto-insert)
