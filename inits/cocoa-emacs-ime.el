;; https://github.com/railwaycat/emacs-mac-port/issues/62
(when (equal system-type 'darwin)
  (setq mac-option-modifier 'meta) ;; Bind meta to ALT
  (setq mac-command-modifier 'super) ;; Bind apple/command to  super if you want
  (setq mac-function-modifier 'hyper)) ;; Bind function key to hyper if you want

;; http://masutaka.net/chalow/2015-01-04-1.html
(mac-auto-ascii-mode 1)
(defun mac-selected-keyboard-input-source-change-hook-func ()
  (set-cursor-color (if (string-match "\\.Roman$" (mac-input-source))
                        "yellow" "red")))
(add-hook 'mac-selected-keyboard-input-source-change-hook
          'mac-selected-keyboard-input-source-change-hook-func)
