(use-package region-bindings-mode
  :ensure t
  :config
  (region-bindings-mode-enable)
  (use-package multiple-cursors
    :ensure t
    :bind (:map region-bindings-mode-map
                ("p" . mc/mark-previous-like-this)
                ("n" . mc/mark-next-like-this)
                ("*" . mc/mark-all-like-this)
                ("u" . mc/unmark-next-like-this)
                ("U" . mc/unmark-previous-like-this)
                ("s" . mc/skip-to-next-like-this)
                ("S" . mc/skip-to-previous-like-this))))
