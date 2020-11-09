;; irc.el – erc configuration

(use-package erc
  :init
  (load "~/.emacs.d/erc-auth.el")
  (setq erc-autojoin-channels-alist '(("freenode.net" "#emacs" "#erc")))
  :config
  ;; I use IRC for ephemeral communications and therefore do not utilize notifications or a bouncer.
  ;; Therefore I refer people to my email in case they need to contact me when I am not present.
  (defun erc-quit/part-reason-default ()
    "email me at {mail,post,spam}@olavfosse.no")
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
