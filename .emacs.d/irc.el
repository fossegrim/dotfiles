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
   	   ;; "#emacs"
	   ;; "#erc"
	   ;; "#org-mode"
	   ;;; web
	   ;; "#web"
	   ;; "#html"
	   ;; "#css"
	   ;; "##javascript"
   	   ;; "##typescript"
	   ;; "#reactjs"
	   ;; "#graphql"
	   ;; "#node.js"
	   ;; "#socket.io"
	   ;;; unix/cs/systems
   	   ;; "#openbsd"
   	   ;; "##c"
	   ;; "##c++"
	   ;; "##sqlite"
	   ;; "##algorithms"
  	   )
	  ("sne.jp" "#visne")
	  ("nebulacentre.net" "#general")))
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
  (defun olav-erc-nebula ()
    (interactive)
    (erc-ssl :server "irc.nebulacentre.net"
	     :port "6697"
	     :nick "fossegrim"
	     :full-name "Olav Fosse"))
  (defun olav-erc-hl ()
    (interactive)
    (erc-ssl :server "irc.hlirc.net"
             :port "6697"
	     :nick "fossegrim"
	     :full-name "Olav Fosse"))

  (defun olav-erc-all ()
    (interactive)
    (olav-erc-freenode)
    (olav-erc-visne)
    (olav-erc-nebula)
    (olav-erc-hl))
  
  :bind (("C-c i f" . 'olav-erc-freenode)
	 ("C-c i v" . 'olav-erc-visne)
	 ("C-c i n" . 'olav-erc-nebula)
	 ("C-c i h" . 'olav-erc-hl)
	 ("C-c i A" . 'olav-erc-all)
	 (:map erc-mode-map
	       ("RET" . nil)
	       ("C-c <C-return>" . 'erc-send-current-line))))
