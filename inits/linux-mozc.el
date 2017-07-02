(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'overlay)
(global-set-key (kbd "M-`") 'toggle-input-method)

;; http://d.hatena.ne.jp/kitokitoki/20110815/p4
(add-hook 'input-method-activate-hook '(lambda () (set-cursor-color "red")))
(add-hook 'input-method-inactivate-hook '(lambda () (set-cursor-color "yellow")))
