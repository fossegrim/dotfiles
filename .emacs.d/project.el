;; project.el – project management sans projectile
(defun olav-open-project ()
  (interactive)
  (cd (completing-read "Project: " (append '("/home/olav/.emacs.d") (directory-files "~/Projects" t)) nil))
  (call-interactively 'find-file)
  )

(use-package project
  :bind (("s-p" . nil)
	 ("s-p f" . project-or-external-find-file)
	 ("s-p d" . project-or-exernal-find-regexp)
	 ("s-p r" . project-query-replace-regexp)
	 ("s-p s" . project-search)))
