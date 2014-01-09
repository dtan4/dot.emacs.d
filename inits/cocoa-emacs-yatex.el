(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(setq tex-command "platex"
      dvi2-command "open -a TeXShop")
(setq YaTeX-kanji-code 4)
(add-hook 'yatex-mode-hook
          '(lambda ()
             (auto-fill-mode -1)))
