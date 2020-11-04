;; magit.el – configurations for the magit git interface
(defun olav-make-magit-frame ()
  (interactive)
  (let (buffer (magit-status))
    (delete-window (get-buffer-window buffer))
    (switch-to-buffer-other-frame buffer)))

(use-package magit
  :init
  (setq magit-save-repository-buffers nil) ;; don't prompt to save files when running magit commands
  :bind (("C-c g" . olav-make-magit-frame)))
