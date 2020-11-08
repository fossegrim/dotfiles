;; irc.el – erc configuration

(use-package erc
  :init
  (load "~/.emacs.d/erc-auth.el")
  (setq erc-nick "fossegrim")
  (setq erc-server "irc.freenode.net")
  (setq erc-port 6667)
  (setq erc-part-reason "email me at {mail,post,spam}@olavfosse.no")
  (setq erc-autojoin-channels-alist '(("freenode.net" "#emacs" "#erc")))
  :config
  (defun olav-erc ()
    (interactive)
    (persp-switch "irc")
    (erc :server "irc.freenode.net"
	 :port "6667"
         :nick "fossegrim"
	 :password olav-freenode-password ; nice try, it's not vc'ed
	 :full-name "Olav Fosse"))
  :bind (("C-c i i" . 'olav-erc)
	 (:map erc-mode-map
	       ("RET" . nil)
	       ("C-c <C-return>" . 'erc-send-current-line)
	       ("C-c C-b" . nil) 	; erc-switch-to-buffer does not work with persp-mode and is therefore unbound.
	       )))
