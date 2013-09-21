(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;; https://github.com/magnars/.emacs.d/blob/master/setup-js2-mode.el
(setq-default js2-global-externs '("module" "require" "buster" "sinon" "assert" "refute" "setTimeout" "clearTimeout" "setInterval" "clearInterval" "location" "__dirname" "console" "JSON" "$" "jQuery" "_" "Backbone" "dojo" "ko"))
