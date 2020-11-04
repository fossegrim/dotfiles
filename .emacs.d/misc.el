;; misc.el – miscelaneus configurations
(fset 'yes-or-no-p 'y-or-n-p)
(load-theme 'wombat)
;; a comfy isearch replacement, unfortunately it doesn't do search-and-replace
(use-package ctrlf
  :config (ctrlf-mode +1))
(use-package which-key
  :config (which-key-mode))
;; remove all trailing whitespace and newlines, handy before commiting.
(global-set-key (kbd "C-c d") 'delete-trailing-whitespace)
(global-set-key (kbd "C-c f") 'delete-file)
