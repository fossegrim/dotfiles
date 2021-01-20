(progn
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (package-initialize)
  (defun olav-install (p)
    "Install package p if it is not already installed."
    (when (not (package-installed-p p)) (package-install p))))

(progn
  (define-prefix-command 'olav-f7-map)
  (global-set-key (kbd "<f7>") 'olav-f7-map)

  (define-prefix-command 'olav-radio-map)
  (define-key olav-f7-map (kbd "r") olav-radio-map))

(progn
  (olav-install 'which-key)
  (which-key-mode))

(progn 
  (olav-install 'go-mode)
  (add-to-list 'exec-path "/usr/local/go/bin")
  (add-to-list 'exec-path "~/go/bin") 	; "go get" installs binaries here
  (setq gofmt-command "goimports")
  (when (not (executable-find gofmt-command))
    (display-warning 'go-mode (concat gofmt-command " not in exec-path. auto-formatting will not work. Install it go get golang.org/x/tools/cmd/goimports.")))
  (add-hook 'before-save-hook 'gofmt-before-save))

;; xah- prefixed functions are copyright of Xah Lee.
(progn
  (defun xah-beginning-of-line-or-block ()
    "Move cursor to beginning of line or previous paragraph.
• When called first time, move cursor to beginning of char in current line. (if already, move to beginning of line.)
• When called again, move cursor backward by jumping over any sequence of whitespaces containing 2 blank lines.
URL `http://ergoemacs.org/emacs/emacs_keybinding_design_beginning-of-line-or-block.html'
Version 2018-06-04"
    (interactive)
    (let (($p (point)))
      (if (or (equal (point) (line-beginning-position))
	      (eq last-command this-command))
	  (if (re-search-backward "\n[\t\n ]*\n+" nil "move")
	      (progn
		(skip-chars-backward "\n\t ")
		;; (forward-char )
		)
	    (goto-char (point-min)))
	(progn
	  (back-to-indentation)
	  (when (eq $p (point))
	    (beginning-of-line))))))
  (global-set-key (kbd "C-a") 'xah-beginning-of-line-or-block)
  (defun xah-end-of-line-or-block ()
    "Move cursor to end of line or next paragraph.
• When called first time, move cursor to end of line.
• When called again, move cursor forward by jumping over any sequence of whitespaces containing 2 blank lines.
URL `http://ergoemacs.org/emacs/emacs_keybinding_design_beginning-of-line-or-block.html'
Version 2018-06-04"
    (interactive)
    (if (or (equal (point) (line-end-position))
	    (eq last-command this-command))
	(progn
	  (re-search-forward "\n[\t\n ]*\n+" nil "move" ))
      (end-of-line)))
  (global-set-key (kbd "C-e") 'xah-end-of-line-or-block))

(progn
  (olav-install 'magit))

(progn
  (olav-install 'eradio)
  (setq eradio-channels '(("def con - soma fm" . "https://somafm.com/defcon256.pls")
			  ("metal - soma fm" . "https://somafm.com/metal130.pls")
			  ("groove salad - soma fm" . "https://somafm.com/groovesalad256.pls")
			  ("secret agent - soma fm" . "https://www.somafm.com/secretagent.pls")
			  ("cafe - lainon" . "https://lainon.life/radio/cafe.ogg.m3u")
			  ("cyberia - lainon" . "https://lainon.life/radio/cyberia.ogg.m3u")
			  ("everything - lainon" . "https://lainon.life/radio/everything.ogg.m3u")
			  ("swing - lainon" . "https://lainon.life/radio/swing.ogg.m3u")
			  ("bluemars - eobm" . "http://streams.echoesofbluemars.org:8000/bluemars.m3u")
			  ("cryosleep - eobm" . "http://streams.echoesofbluemars.org:8000/cryosleep.m3u")
			  ("death - death.fm" . "http://death.fm/modules/Listen/MP3-hi.pls")
			  ("4059 - 0xfdb.fm"  . "https://music.taro.0xfdb.xyz:8443/stream.flac")
			  ("classical - sonatica.fm" . "https://orion.shoutca.st/tunein/sonatica.pls")))
  (setq eradio-player '("mpv" "--no-video" "--no-terminal"))
  (define-prefix-command 'olav-eradio-map)
  (global-set-key (kbd "C-c r") 'olav-eradio-map)
  (define-key olav-eradio-map (kbd "r") 'eradio-toggle)
  (define-key olav-eradio-map (kbd "p") 'eradio-play)
  (define-key olav-eradio-map (kbd "s") 'eradio-stop))

(progn
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
  (define-key olav-f7-map (kbd "c") olav-chat-map)
  (define-key olav-chat-map (kbd "f") 'olav-chat-join-freenode)
  (define-key olav-chat-map (kbd "v") 'olav-chat-join-visne)
  (define-key olav-chat-map (kbd "n") 'olav-chat-join-nebula)
  (define-key olav-chat-map (kbd "h") 'olav-chat-join-hl)
  (define-key olav-chat-map (kbd "p") 'olav-chat-join-pine64)
  (define-key olav-chat-map (kbd "a") 'olav-chat-join-all)
  ;; PRevent accidentally sending messages
  (define-key erc-mode-map (kbd "RET") nil)
  (define-key erc-mode-map (kbd "C-c <C-return>") 'erc-send-current-line))

(defun olav-save-buffer-as-is ()
  "Save file \"as is\", that is in read-only-mode."
  (interactive)
  (if buffer-read-only
      (save-buffer)
    (read-only-mode 1)
    (save-buffer)
    (read-only-mode 0)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("752d4dc1e784d2e31c57e7fdf769c916c74cab59e27c08d1e5c4b683df59bb94" "dbf58130f89f49aca831812c8df2452d7126388f6cc34a42666c691f88a8be3e" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (modus-themes modalka eradio which-key xah-fly-keys magit go-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
