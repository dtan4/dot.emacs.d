;; auto-insert-mode
(use-package autoinsert
  :config
  (setq auto-insert-query nil) ;; skip prompt
  (setq auto-insert-directory (concat user-emacs-directory "template"))
  ;; 各ファイルによってテンプレートを切り替える
  (setq auto-insert-alist
        '(
          ("\\.cpp$" . ["template.cpp" my-template])
          ("\\.c$" . ["template.c" my-template])
          ("\\.tex$" . ["template.tex" my-template])
          ("\\.java$" . ["template.java" my-template])
          ("_spec\\.rb$" . ["template_spec.rb" my-template])
          ("\\.rb$" . ["template.rb" my-template])
          ("\\.pl$" . ["template.pl" my-template])
          ("\\.sh$" . ["template.sh" my-template])
          ))
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
  (add-hook 'find-file-not-found-hooks 'auto-insert))
