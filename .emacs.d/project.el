;; project.el – project and workspace management with projectile
(use-package projectile
  :init
  (setq projectile-project-search-path '("~/Projects"))
  (setq projectile-completion-system 'default) ;; Use selectrum completion
  (setq projectile-indexing-method 'hybrid)
  (setq projectile-sort-order 'recently-active) ;; Sort files by recently active buffer and then recenently opened files
  (setq projectile-use-git-grep t) ; only grep vced files in git projects
  (setq projectile-switch-project-action 'projectile-dired)
  :config
  (projectile-mode +1)
  :bind (("C-c j" . projectile-command-map)
	 (:map projectile-command-map
	       ("s" . projectile-grep) ;; just use grep
	       ("A" . projectile-add-known-project))))
