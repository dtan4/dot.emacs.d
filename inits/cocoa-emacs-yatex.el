(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(setq tex-command "platex")
(setq dviprint-command-format "dvipdfmx %s")
(setq dvi2-command "open -a Skim")
(setq YaTeX-kanji-code 4)
(add-hook 'yatex-mode-hook
          '(lambda ()
             (auto-fill-mode -1)))
(setq YaTeX-inhibit-prefix-letter t) ;; C-c C-t j to compile
