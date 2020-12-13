;; go.el - go language configuration
(use-package go-mode
  :init
  ;; goimports must be installed and in PATH
  ;; to install goimports to $HOME/go/bin run
  ;; $ go get golang.org/x/tools/cmd/goimports
  (setq gofmt-command "goimports")
  :config
  (add-hook 'before-save-hook 'gofmt-before-save)
  :bind
  (:map go-mode-map
	("C-c C-S-d" . 'godoc))
  (:map godoc-mode-map
	("C-c C-S-d" . 'godoc)))
