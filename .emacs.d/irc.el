;; irc.el – erc configuration

;; C-c C-b for switching buffers does not work with persp-mode, also see
(use-package erc
  :init
  (setq erc-nick "fossegrim")
  :config
  (defun olav-erc ()
    (interactive)
    (persp-switch "irc")
    (call-interactively 'erc)))
