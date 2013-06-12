(setq shell-file-name "c:/cygwin/bin/zsh.exe")
(setenv "SHELL" shell-file-name)
(setq explicit-shell-file-name shell-file-name)
(setq shell-mode-hook
      (function (lambda ()
                  (set-buffer-process-coding-system 'utf-8-unix
                                                    'utf-8-unix))))
