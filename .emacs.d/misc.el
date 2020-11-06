;; misc.el – miscelaneus configurations
(fset 'yes-or-no-p 'y-or-n-p)
;; a comfy isearch replacement, unfortunately it doesn't do search-and-replace
(use-package ctrlf
  :config (ctrlf-mode +1))
(use-package which-key
  :config (which-key-mode))
;; remove all trailing whitespace and newlines, handy before commiting.
(global-set-key (kbd "C-c d") 'delete-trailing-whitespace)
(global-set-key (kbd "C-c f") 'delete-file)
(global-set-key (kbd "C-c F") 'rename-file)
(defun olav-insert-file-name ()
  (interactive)
  (insert (read-file-name "Insert: " nil nil nil)))
(set-default 'truncate-lines t)
