(if (display-graphic-p)
    (if (find-font (font-spec :name "Ricty"))
        (set-face-attribute 'default nil
                            :family "Ricty"
                            :height 120))
  ;; (set-fontset-font nil 'japanese-jisx0208
  ;;                   (font-spec :family "Ricty" :registry "unicode-bmp"))
  )
