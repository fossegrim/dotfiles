;; project.el – project and workspace management with projectile and perspective
(use-package perspective
  :init (setq persp-mode-prefix-key (kbd "C-c k"))
  :config (persp-mode))

(use-package persp-projectile
  :after perspective)

(use-package projectile
  :after persp-projectile
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
	       ("A" . projectile-add-known-project)
	       ("p" . projectile-persp-switch-project))))

