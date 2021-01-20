(require 'erc)
(setq erc-autojoin-channels-alist
      '(("freenode.net"
	 ;;; friends
	 ;; "#distrotube"
	 ;; "#tripcode"
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
	 ;; "#go-nuts"
	 ;; "##sqlite"
	 ;; "##algorithms"
	 ;;; liracer
	 "#liracer"
	 )
	("sne.jp" "#visne")
	("irc.pine64.org"
	 ;; General
	 "#pine-community"
	 "#OffTopic" 			;/list wrote it with this casing
	 ;; My board (rockpro64 2gb)
	 "#rock64")
	("nebulacentre.net" "#general")))
;; I use IRC for ephemeral communications only and therefore do not
;; utilize notifications or a bouncer. I refer people to my email in
;; case they need to contact me when I am not present.
(defun erc-quit/part-reason-default ()
  "email me at {mail,post,spam}@olavfosse.no")
(load "~/.emacs.d/erc-auth.el")
(defun olav-chat-join-freenode ()
  (interactive)
  (erc :server "irc.freenode.net"
       :port "6667"
       :nick "fossegrim"
       :password olav-chat-freenode-password ; nice try, it's not vc'ed
       :full-name "Olav Fosse"))
(defun olav-chat-join-visne ()
  (interactive)
  (erc-ssl :server "vi.sne.jp"
	   :port "6697"
	   :nick "fossegrim"
	   :full-name "Olav Fosse"))
(defun olav-chat-join-nebula ()
  (interactive)
  (erc-ssl :server "irc.nebulacentre.net"
	   :port "6697"
	   :nick "fossegrim"
	   :full-name "Olav Fosse"))
(defun olav-chat-join-hl ()
  (interactive)
  (erc-ssl :server "irc.hlirc.net"
	   :port "6697"
	   :nick "fossegrim"
	   :full-name "Olav Fosse"))
(defun olav-chat-join-pine64 ()
  (interactive)
  (erc-ssl :server "irc.pine64.org"
	   :port "6697"
	   :nick "fossegrim"
	   :full-name "Olav Fosse"))
(defun olav-chat-join-all ()
  (interactive)
  (olav-chat-join-freenode)
  (olav-chat-join-visne)
  (olav-chat-join-nebula)
  (olav-chat-join-hl)
  (olav-chat-join-pine64))

(define-prefix-command 'olav-chat-map)
(define-key olav-pedal-map (kbd "c") olav-chat-map)
(define-key olav-chat-map (kbd "f") 'olav-chat-join-freenode)
(define-key olav-chat-map (kbd "v") 'olav-chat-join-visne)
(define-key olav-chat-map (kbd "n") 'olav-chat-join-nebula)
(define-key olav-chat-map (kbd "h") 'olav-chat-join-hl)
(define-key olav-chat-map (kbd "p") 'olav-chat-join-pine64)
(define-key olav-chat-map (kbd "a") 'olav-chat-join-all)
;; PRevent accidentally sending messages
(define-key erc-mode-map (kbd "RET") nil)
(define-key erc-mode-map (kbd "C-c <C-return>") 'erc-send-current-line)
