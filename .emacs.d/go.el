;; go.el - go language configuration
(use-package go-mode
  :init
  ;; goimports must be in PATH
  ;; goimports is in $HOME/go/bin
  (setq gofmt-command "goimports")
  :config
  (add-hook 'before-save-hook 'gofmt-before-save))
