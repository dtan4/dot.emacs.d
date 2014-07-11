(setq plantuml-jar-path "/usr/local/Cellar/plantuml/7999/plantuml.7999.jar")
(require 'plantuml-mode)
(add-to-list 'auto-mode-alist '("\\.uml$" . plantuml-mode))
