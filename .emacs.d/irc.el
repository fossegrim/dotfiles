;; irc.el – erc configuration

(use-package erc
  :init
  (load "~/.emacs.d/erc-auth.el")
  (setq erc-autojoin-channels-alist
   	'(("freenode.net"
   	   ;; friends
   	   "#distrotube"
   	   "#tripcode"
  ;; 	   ;; emacs
  ;; 	   "#emacs"
  ;; 	   "#erc"
  ;; 	   "#org-mode"
  ;; 	   ;; web
  ;; 	   "#web"
  ;; 	   "#html"
  ;; 	   "#css"
  ;; 	   "##javascript"
  ;; 	   "##typescript"
  ;; 	   "#reactjs"
  ;; 	   "#graphql"
  ;; 	   "#node.js"
  ;; 	   "#socket.io"
  ;; 	   ;; unix/cs/systems
  ;; 	   "#openbsd"
  ;; 	   "##c"
  ;; 	   "##c++"
  ;; 	   "##sqlite"
  ;; 	   "##algorithms"
  	   )))
  :config
  ;; I use IRC for ephemeral communications only and therefore do not utilize notifications or a bouncer.
  ;; I refer people to my email in case they need to contact me when I am not present.
  (defun erc-quit/part-reason-default ()
    "email me at {mail,post,spam}@olavfosse.no")
  (defun olav-erc ()
    "If erc pespective exists, switch to it, otherwise create it and open erc there.

NB: perspectives are per frame.
"
    (interactive)
    (when (not (-contains-p (hash-table-keys (perspectives-hash)) "erc"))
      (erc :server "irc.freenode.net"
	   :port "6667"
           :nick "fossegrim"
	   :password olav-freenode-password ; nice try, it's not vc'ed
	   :full-name "Olav Fosse"))
    (persp-switch "erc"))

  :bind (("C-c i i" . 'olav-erc)
	 (:map erc-mode-map
	       ("RET" . nil)
	       ("C-c <C-return>" . 'erc-send-current-line)
	       ("C-c C-b" . nil) 	; erc-switch-to-buffer does not work with persp-mode and is therefore unbound.
	       )))
