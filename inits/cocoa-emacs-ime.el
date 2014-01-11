(setq default-input-method "MacOSX")
(mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `title "あ")
(add-hook 'minibuffer-setup-hook 'mac-change-language-to-us)
