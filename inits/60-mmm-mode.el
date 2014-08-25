;; use web-mode

;; (require 'mmm-auto)
;; (setq mmm-global-mode 'maybe)
;; (setq mmm-submode-decoration-level 3)
;; (invert-face 'mmm-default-submode-face t)
;; (mmm-add-classes
;;  '((html-javascript
;;     :submode javascript-mode
;;     :front "<script[^>]*>"
;;     :back "</script>")))
;; (mmm-add-mode-ext-class nil "\\.html?\\'" 'html-javascript)

;; (mmm-add-mode-ext-class 'html-erb-mode "\\.html\\.erb\\'" 'erb)
;; (mmm-add-mode-ext-class 'html-erb-mode "\\.jst\\.ejs\\'" 'ejs)
;; (mmm-add-mode-ext-class 'html-erb-mode nil 'html-js)
;; (mmm-add-mode-ext-class 'html-erb-mode nil 'html-css)

;; (add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . html-erb-mode))
;; (add-to-list 'auto-mode-alist '("\\.jst\\.ejs\\'"  . html-erb-mode))
