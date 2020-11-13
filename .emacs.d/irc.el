;; irc.el – erc configuration

(use-package erc
  :init
  (load "~/.emacs.d/erc-auth.el")
  (setq erc-autojoin-channels-alist
   	'(("freenode.net"
   	   ;;; friends
   	   "#distrotube"
   	   "#tripcode"
	   ;;; emacs
   	   "#emacs"
	   ;; "#erc"
	   ;; "#org-mode"
	   ;;; web
	   ;; "#web"
	   ;; "#html"
	   ;; "#css"
	   ;; "##javascript"
   	   "##typescript"
	   ;; "#reactjs"
	   ;; "#graphql"
	   ;; "#node.js"
	   ;; "#socket.io"
	   ;;; unix/cs/systems
   	   "#openbsd"
   	   "##c"
	   ;; "##c++"
	   ;; "##sqlite"
	   ;; "##algorithms"
  	   )))
  :config
  ;; I use IRC for ephemeral communications only and therefore do not
  ;; utilize notifications or a bouncer. I refer people to my email in
  ;; case they need to contact me when I am not present.
  (defun erc-quit/part-reason-default ()
    "email me at {mail,post,spam}@olavfosse.no")
  (defun olav-erc-freenode ()
    (interactive)
    (erc :server "irc.freenode.net"
	 :port "6667"
         :nick "fossegrim"
	 :password olav-freenode-password ; nice try, it's not vc'ed
	 :full-name "Olav Fosse"))
  (defun olav-erc-visne ()
    (interactive)
    (erc-ssl :server "vi.sne.jp"
	 :port "6697"
         :nick "fossegrim"
	 :full-name "Olav Fosse"))
  
  :bind (("C-c l i" . 'olav-erc-freenode)
	 (:map erc-mode-map
	       ("RET" . nil)
	       ("C-c <C-return>" . 'erc-send-current-line)
	       )))
