(load-file "/usr/share/emacs/site-lisp/emacs-mozc/mozc.el")
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'overlay)
(global-set-key (kbd "s-SPC") 'toggle-input-method)
(global-set-key (kbd "s-`") 'toggle-input-method)
(global-set-key (kbd "M-`") 'toggle-input-method)