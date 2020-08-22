;; Make browse-at-remote (and some link jumps) available in WSL
;; https://adam.kruszewski.name/2017/09/emacs-in-wsl-and-opening-links
(let ((cmd-exe "/mnt/c/Windows/System32/cmd.exe")
      (cmd-args '("/c" "start")))
  (when (file-exists-p cmd-exe)
    (setq browse-url-generic-program  cmd-exe
          browse-url-generic-args     cmd-args
          browse-url-browser-function 'browse-url-generic)))
