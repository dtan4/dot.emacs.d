(use-package highlight-indent-guides
  :hook (yaml-mode . highlight-indent-guides-mode)
  :custom
  (highlight-indent-guides-character ?\|)
  (highlight-indent-guides-auto-enabled t)
  (highlight-indent-guides-responsive t)
  (highlight-indent-guides-method 'character))
