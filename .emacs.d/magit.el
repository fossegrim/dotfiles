;; magit.el – configurations for the magit git interface
(use-package magit
  :if nil
  :init
  (setq magit-clone-default-directory "~/Projects/")
  (setq magit-clone-set-remote.pushDefault t) ; set it without prompting
  (setq magit-save-repository-buffers nil) ;; don't prompt to save files when running magit commands
  :bind
  ("C-c q" . magit-clone))
