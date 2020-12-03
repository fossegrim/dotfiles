;; project.el – project and workspace management with projectile
(use-package projectile
  :init
  (setq projectile-project-search-path '("~/Projects"))
  (setq projectile-completion-system 'default) ;; Use selectrum completion
  (setq projectile-indexing-method 'hybrid)
  (setq projectile-sort-order 'recently-active) ;; Sort files by recently active buffer and then recenently opened files
  (setq projectile-use-git-grep t) ; only grep vced files in git projects
  (setq projectile-switch-project-action 'projectile-dired)
  (defun olav-projectile-external-terminal ()
    (interactive)
    (if (string-equal system-type "darwin")
	 (shell-command (concat "open -na Terminal.app " (projectile-project-root))
       (message "no external terminal configured for non-macos system"))))
  :config
  (projectile-mode +1)
  :bind (("C-c j" . projectile-command-map)
	 (:map projectile-command-map
	       ("s" . projectile-grep) ;; just use grep
	       ("A" . projectile-add-known-project)
	       ("R" . projectile-remove-known-project) ; overwrites, projectile-regenerate-tags
	       ("x T" . olav-projectile-external-terminal))))
