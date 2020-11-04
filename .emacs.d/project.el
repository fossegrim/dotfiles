;; project.el – project management ~sans~ with projectile
(defun olav-open-project ()
  (interactive)
  (cd (completing-read "Project: " (append '("/home/olav/.emacs.d") (directory-files "~/Projects" t)) nil))
  (call-interactively 'find-file))

(use-package projectile
  :init
  (setq projectile-project-search-path '("~/Projects"))
  (setq projectile-completion-system 'default) ;; Use selectrum completion
  (setq projectile-indexing-method 'hybrid)
  (setq projectile-sort-order 'recently-active) ;; Sort files by recently active buffer and then recenently opened files
  (setq projectile-current-project-on-switch 'keep) ;; Include current project in project list
  (setq projectile-switch-project-action 'projectile-vc) ;; Open magit when switching to a project
  :config
  (projectile-mode +1)
  :bind (("C-c j" . projectile-command-map)
	 (:map projectile-command-map
	       ("A" . projectile-add-known-project))))
