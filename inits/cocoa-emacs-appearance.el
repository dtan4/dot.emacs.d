;; Font settings
;; 01234567890123456789
;; あいうえおかきくけこ
(set-face-attribute 'default nil
                    :family "Ricty"
                    :height 160)
(set-fontset-font nil 'japanese-jisx0208
                  (font-spec :family "Ricty" :registry "unicode-bmp"))

;; (setq initial-frame-alist
;;      (append (list
;;               '(width . 90)
;;               '(height . 60)
;;               )
;;              initial-frame-alist))
(setq default-frame-alist initial-frame-alist)

(set-scroll-bar-mode nil)

(set-frame-parameter nil 'alpha 95)
