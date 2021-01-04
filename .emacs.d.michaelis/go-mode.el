(when (not (package-installed-p 'go-mode)) (package-install 'go-mode))

(add-to-list 'exec-path "/usr/local/go/bin")
(add-to-list 'exec-path "~/go/bin") 	; "go get" installs binaries here
(setq gofmt-command "goimports")
(when (not (executable-find gofmt-command))
  (display-warning 'go-mode (concat gofmt-command " not in exec-path. auto-formatting will not work. Install it go get golang.org/x/tools/cmd/goimports.")))
(add-hook 'before-save-hook 'gofmt-before-save)
