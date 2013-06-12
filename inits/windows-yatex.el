(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(setq dvi2-command "c:/dviout/dviout")
(setq dviprint-command-format "dvipdfmx %s")
(setq YaTeX-kanji-code 4)
