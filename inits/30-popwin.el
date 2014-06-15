(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
(defadvice YaTeX-showup-buffer (around popwin-yatex:YaTeX-showup-buffer (buffer &optional func select) activate)
  (popwin:display-buffer-1 buffer
                           :default-config-keywords `(:noselect ,(not select))
                           :if-config-not-found (lambda (buffer) ad-do-it)))
(push '("*YaTeX-typesetting*") popwin:special-display-config)
(push '("*dvi-preview*") popwin:special-display-config)
