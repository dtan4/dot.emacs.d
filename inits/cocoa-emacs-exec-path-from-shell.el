(exec-path-from-shell-initialize)
(let ((envs '("PATH" "GOPATH")))
  (exec-path-from-shell-copy-envs envs))
