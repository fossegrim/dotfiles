;; project.el – project and workspace management with projectile
(use-package projectile
  :init
  (defun olav-mkdir (DIRECTORY)
    "Create DIRECTORY, and its parents, if it does not already exist. Return directory name."
    (or (file-exists-p DIRECTORY) (make-directory DIRECTORY))
    DIRECTORY)
  (setq projectile-project-search-path (append
					;; ~/vc/forge/{user,organization}/repo
					(directory-files (olav-mkdir "~/vc/github.com") 1)
					(directory-files (olav-mkdir "~/vc/gitlab.com") 1)
					(directory-files (olav-mkdir "~/vc/notabug.org") 1)
					;; ~/vc/forge/repo
					(list (olav-mkdir "~/vc/git.suckless.org"))))
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
