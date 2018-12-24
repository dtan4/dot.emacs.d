(require 'lsp-mode)

(require 'lsp-ui)

(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(add-hook 'lsp-ui-mode-hook (lambda ()
                           (setq lsp-ui-sideline-enable nil)
                           (setq lsp-ui-doc nil)
                           ))

(require 'company-lsp)

(push 'company-lsp company-backends)
