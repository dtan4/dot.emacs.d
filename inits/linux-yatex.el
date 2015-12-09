(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
;; (setq YaTeX-inhibit-prefix-letter t)
(setq YaTeX-prefix (kbd "C-c t"))
(setq auto-mode-alist
      (append '(("\\.tex$" . yatex-mode)
                ("\\.ltx$" . yatex-mode)
                ("\\.cls$" . yatex-mode)
                ("\\.sty$" . yatex-mode)
                ("\\.clo$" . yatex-mode)
                ("\\.bbl$" . yatex-mode)) auto-mode-alist))
(setq YaTeX-inhibit-prefix-letter t) ;; C-c C-t j to compile
(setq YaTeX-kanji-code nil)
(setq YaTeX-use-LaTeX2e t)
(setq YaTeX-use-AMS-LaTeX t)
(setq YaTeX-dvipdf-command "dvipdfmx")
(setq YaTeX-dvi2-command-ext-alist
      '(("[agx]dvi\\|dviout" . ".dvi")
        ("gv" . ".ps")
        ("texworks\\|evince\\|okular\\|zathura\\|mupdf\\|xpdf\\|acroread\\|pdfopen" . ".pdf")))
(setq bibtex-command "pbibtex")
(setq makeindex-command "mendex")
(setq tex-command "platex")
(setq dvi2-command "texworks")
(setq dviprint-command-format "pdfopen -viewer ar9-tab %s")
(defun evince-forward-search ()
  (interactive)
  (let* ((ctf (buffer-name))
         (mtf)
         (pf)
         (ln (format "%d" (line-number-at-pos)))
         (cmd "evince_forward_search")
         (args))
    (if (YaTeX-main-file-p)
        (setq mtf (buffer-name))
      (progn
        (if (equal YaTeX-parent-file nil)
            (save-excursion
              (YaTeX-visit-main t)))
        (setq mtf YaTeX-parent-file)))
    (setq pf (concat (car (split-string mtf "\\.")) ".pdf"))
    (setq args (concat pf " " ln " " ctf))
    (process-kill-without-query
     (start-process-shell-command "evince_forward_search" nil cmd args))))
(add-hook 'yatex-mode-hook
          '(lambda ()
             (define-key YaTeX-mode-map (kbd "C-c e") 'evince-forward-search)))
(defun pxdvi-forward-search ()
  (interactive)
  (let* ((ctf (buffer-name))
         (mtf)
         (df)
         (ln (format "%d" (line-number-at-pos)))
         (cmd "pxdvi")
         (args))
    (if (YaTeX-main-file-p)
        (setq mtf (buffer-name))
      (progn
        (if (equal YaTeX-parent-file nil)
            (save-excursion
              (YaTeX-visit-main t)))
        (setq mtf YaTeX-parent-file)))
    (setq df (concat (car (split-string mtf "\\.")) ".dvi"))
    (setq args (concat " -nofork " df " -sourceposition " ln ":" ctf))
    (process-kill-without-query
     (start-process-shell-command "pxdvi" nil cmd args))))
(add-hook 'yatex-mode-hook
          '(lambda ()
             (define-key YaTeX-mode-map (kbd "C-c d") 'pxdvi-forward-search)))
(add-hook 'yatex-mode-hook
          '(lambda ()
             (auto-fill-mode -1)))
