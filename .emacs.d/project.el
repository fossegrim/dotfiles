;; project.el – project management sans projectile
(defun olav-open-project ()
  (interactive)
  (dired (completing-read "Project: " (directory-files "~/Projects") nil t)))

(use-package project
  :bind (("s-p" . nil)
	 ("s-p f" . project-or-external-find-file)
	 ("s-p d" . project-or-exernal-find-regexp)
	 ("s-p r" . project-query-replace-regexp)
	 ("s-p s" . project-search)))
