;; Font settings
;; 01234567890123456789
;; あいうえおかきくけこ
;; 开发者中心
(if (find-font (font-spec :name "Ricty"))
    (progn (set-face-attribute 'default nil
                        :family "Ricty"
                        :height 120)
           (set-fontset-font nil 'japanese-jisx0208
                             (font-spec :family "Ricty" :registry "unicode-bmp"))))

(set-fontset-font t 'han (font-spec :family "Hei" :height 160))

;; Required to show green characters
(setq default-frame-alist initial-frame-alist)

(set-scroll-bar-mode nil)

;; http://d.hatena.ne.jp/rkworks/20130124/1359042654
(set-frame-parameter nil 'alpha 90)

;; (toggle-frame-fullscreen)
