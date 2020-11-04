;; magit.el – configurations for the magit git interface
(use-package magit
  :init
  (setq magit-save-repository-buffers nil) ;; don't prompt to save files when running magit commands
  :bind (("C-c g" . magit-status)))
