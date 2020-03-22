(use-package go-mode)

;; TODO: looks this lint doesn't work well now
(use-package flycheck-golangci-lint
  ;; :requires (flycheck-mode)
  :custom
  (flycheck-golangci-lint-enable-linters '("deadcode" "gosimple" "govet" "staticcheck" "varcheck" "misspell"))
  :hook (go-mode . flycheck-golangci-lint-setup))
