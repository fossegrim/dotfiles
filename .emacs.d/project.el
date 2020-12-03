;; project.el – project and workspace management with projectile
(use-package projectile
  :init
  (setq projectile-project-search-path '("~/Projects"))
  (setq projectile-completion-system 'default) ;; Use selectrum completion
  (setq projectile-indexing-method 'hybrid)
  (setq projectile-sort-order 'recently-active) ;; Sort files by recently active buffer and then recenently opened files
  (setq projectile-use-git-grep t) ; only grep vced files in git projects
  (setq projectile-switch-project-action 'projectile-vc)

  (defun olav-projectile-run-Terminal.app ()
    (interactive)
    (shell-command (concat "open -a Terminal.app " (projectile-project-root))))

  (defun olav-projectile-run-Visual-Studio-Code.app ()
    (interactive)
    (shell-command (concat "open -a 'Visual Studio Code.app' " (projectile-project-root))))

  (defun olav-projectile-run-Finder.app ()
    (interactive)
    (shell-command (concat "open -a Finder.app " (projectile-project-root))))
  
  :config
  (projectile-mode +1)
  :bind (("C-c j" . projectile-command-map)
	 (:map projectile-command-map
	       ("s" . projectile-grep) ;; just use grep
	       ("A" . projectile-add-known-project)
	       ("R" . projectile-remove-known-project) ; overwrites projectile-regenerate-tags
	       ("x t" . olav-projectile-run-Terminal.app) ; overwrites projectile-run-term
	       ("x v" . olav-projectile-run-Visual-Studio-Code.app) ; overwrites projectile-run-term
	       ("x f" . olav-projectile-run-Finder.app))))
