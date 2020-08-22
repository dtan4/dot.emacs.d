(if (display-graphic-p)
    (use-package mozc
      :bind ("M-`" . toggle-input-method)))

(if (display-graphic-p)
    (use-package mozc-im
      :requires mozc
      :config
      (setq default-input-method "japanese-mozc")
      (setq mozc-candidate-style 'overlay)

      ;; http://d.hatena.ne.jp/kitokitoki/20110815/p4
      (add-hook 'input-method-activate-hook '(lambda () (set-cursor-color "red")))
      (add-hook 'input-method-inactivate-hook '(lambda () (set-cursor-color "yellow")))))
