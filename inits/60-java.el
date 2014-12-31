;; http://d.hatena.ne.jp/mzp/20090618/emacs
(add-hook 'java-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq tab-width 4)
            (setq c-basic-offset 4)))
