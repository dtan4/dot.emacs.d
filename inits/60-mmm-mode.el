;; mmm-mode
(load-library "mmm-mode")
(require 'mmm-auto)
(invert-face 'mmm-default-submode-face t)
(setq mmm-global-mode 'maybe)
(setq mmm-submode-decoration-level 3)
(mmm-add-classes
 '((html-javascript
    :submode javascript-mode
    :front "<script[^>]*>"
    :back "</script>")))
(mmm-add-mode-ext-class nil "\\.html?\\'" 'html-javascript)
