(if (display-graphic-p)
    (if (find-font (font-spec :name "Ricty Diminished"))
        (set-face-attribute 'default nil
                            :family "Ricty Diminished"
                            :height 105))
  (set-fontset-font nil 'japanese-jisx0208
                    (font-spec :family "Ricty Diminished" :height 105)))
