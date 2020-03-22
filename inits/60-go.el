(use-package go-mode
  :config
  (add-hook 'before-save-hook 'gofmt-before-save)

  (use-package flycheck-golangci-lint
    :custom
    (flycheck-golangci-lint-enable-linters '("golint" "varcheck" "vet" "staticcheck" "misspell"))
    :hook ((go-mode . flycheck-golangci-lint-setup)
           (go-mode . flycheck-mode))))
