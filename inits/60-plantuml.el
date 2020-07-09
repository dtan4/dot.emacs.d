(use-package plantuml-mode
  :mode (("\\.plantuml$" . plantuml-mode)
         ("\\.pu$" . plantuml-mode))
  :config
  (setq plantuml-default-exec-mode 'executable)
  (setq plantuml-output-type "png"))
