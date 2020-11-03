;; project.el – project management sans projectile
(defun olav-open-project ()
  (interactive)
  (cd (completing-read "Project: " (append '("/home/olav/.emacs.d") (directory-files "~/Projects" t)) nil))
  (call-interactively 'find-file)
  )

(use-package project
  :bind (("C-c j f" . project-or-external-find-file)
	 ("C-c j d" . project-or-exernal-find-regexp)
	 ("C-c j r" . project-query-replace-regexp)
	 ("C-c j s" . project-search)
	 ("C-c j o" . olav-open-project)))
