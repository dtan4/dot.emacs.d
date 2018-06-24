;; Emacs 26 has global-display-line-numbers-mode, which is lighter than linum-mode
;; https://www.emacswiki.org/emacs/LineNumbers

(if (version< emacs-version "26.0")
    (progn (require 'linum)
           (global-linum-mode t)
           (setq linum-format "%4d")

           ;; http://d.hatena.ne.jp/daimatz/20120215/1329248780
           (setq linum-delay t)
           (defadvice linum-schedule (around my-linum-schedule () activate)
             (run-with-idle-timer 0.2 nil #'linum-update-current)))
  (progn (global-display-line-numbers-mode t)
         (setq display-line-numbers "%4d")))
