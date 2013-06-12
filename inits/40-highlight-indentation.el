;; highlight-indentation
(require 'highlight-indentation)
(add-hook 'after-change-major-mode-hook 'highlight-indentation-current-column-mode)
