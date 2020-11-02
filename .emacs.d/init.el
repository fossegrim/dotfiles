;; Welcome to my config :^)
;; Configure Melpa
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Make it possible to set keychords in use-package
(use-package use-package-chords
  :ensure t
  :config
  (key-chord-mode 1))

;; Do not create annoying files
(use-package annoying-files
  :ensure nil
  :init
  (setq create-lockfiles nil) ; do not create .# files
  )


;; Use left-alt as as meta and right-alt for inputting special characters
(use-package configure-mac-alt
  :ensure nil
  :if
  (string-equal system-type "darwin")
  :init
  (setq mac-option-modifier 'meta)
  (setq mac-right-option-modifier 'none))

;; Use wombat theme
(use-package configure-theme
  :ensure nil
  :init
  (load-theme 'wombat))

;; Configure cc-mode
(use-package cc-mode
  :ensure nil
  :init
  ;; Use stroustroup / The C Programming Language, 2nd Edition style
  (setq c-default-style '((c-mode . "stroustrup")))
  (setq c-indent-comment-alist '((other . (column . 0)))))

;; Magit
(use-package magit
  :ensure t
  :bind (("C-c c m g" . magit)
	 ("C-c c m s" . magit-stage))
  :chords (("Mg" . magit)
	   ("Ms" . magit-stage)))

;; eradio
(use-package eradio
  :ensure t
  :init (setq eradio-channels '(("def con - soma fm" . "https://somafm.com/defcon256.pls")
				("metal - soma fm" . "https://somafm.com/metal130.pls")
				("groove salad - soma fm" . "https://somafm.com/groovesalad256.pls")
				("secret agent - soma fm" . "https://www.somafm.com/secretagent.pls")
				("cafe - lainon" . "https://lainon.life/radio/cafe.ogg.m3u")
				("cyberia - lainon" . "https://lainon.life/radio/cyberia.ogg.m3u")
				("everything - lainon" . "https://lainon.life/radio/everything.ogg.m3u")
				("swing - lainon" . "https://lainon.life/radio/swing.ogg.m3u")
				("bluemars - eobm" . "http://streams.echoesofbluemars.org:8000/bluemars.m3u")
				("cryosleep - eobm" . "http://streams.echoesofbluemars.org:8000/cryosleep.m3u")))
  :bind (("C-c c p" . eradio-play)
	 ("C-c c s" . eradio-stop))
  :chords (("rP" . eradio-play)
	   ("rS" . eradio-stop))))

;; Customize
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package-chords eradio magit use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
