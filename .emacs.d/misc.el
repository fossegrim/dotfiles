;; misc.el – miscelaneus configurations
(fset 'yes-or-no-p 'y-or-n-p)
(load-theme 'wombat)
(use-package ctrlf
  :config (ctrlf-mode +1))
(use-package which-key
  :config (which-key-mode))
