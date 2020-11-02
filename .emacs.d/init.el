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

;; Implicitly :ensure t
(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; Implicitly :demand t
(setq use-package-always-demand t) ; I prefer waiting for stuff to load when i launch emacs to later on.

;; Make it possible to set keychords in use-package
(use-package use-package-chords
  :config
  (key-chord-mode 1))

;; Do not create annoying files
(setq create-lockfiles nil) ; prevent creation of .#* files
(setq auto-save-default nil) ; prevent creation of *~ files

;; Use left-alt as as meta and right-alt for inputting special characters
(when (string-equal system-type "darwin")
  (setq mac-option-modifier 'meta)
  (setq mac-right-option-modifier 'none))

;; Use wombat theme
(load-theme 'wombat)

;; Use selectrum – a superior alternative to ido/ivy/helm
(use-package selectrum
  :init
  (selectrum-mode +1)
  (setq selectrum-fix-minibuffer-height 15) ; Use a fixed minibuffer height
  :bind ("C-c z" . selectrum-repeat))

;; Use selectrum-prescient – improved narroving for selectrum using prescient
(use-package selectrum-prescient
  :after selectrum
  :init
  (setq prescient-history-length 1000)
  :config
  (prescient-persist-mode +1)
  (selectrum-prescient-mode +1))

;; Use ctrlf – an improved alternative to isearch
(use-package ctrlf
  :config (ctrlf-mode +1))

; Use which-key
(use-package which-key
  :config (which-key-mode))

; Use y/n prompts instead of yes/no prompts
(fset 'yes-or-no-p 'y-or-n-p)

;; Magit
(use-package magit
  :bind (("s-g" . nil) ; unbind key, so that it can be used as a modifier
	 ; 20%
	 ("s-g g" . magit)
	 ; 80%
	 ("s-g s" . magit-stage-file)
	 ("s-g u" . magit-unstage-file)
	 ("s-g r" . magit-file-delete)
	 ("s-g d" . magit-diff-staged)
	 ("s-g c" . magit-file-checkout)
	 ("s-g l" . magit-log-all)
	 ("s-g p" . magit-push-to-remote)))

;; project.el
; find function to set bindings like use-package without using the macro
;(("s-p" . nil)
; ("s-p f" . project-or-external-find-file)
; ("s-p d" . project-or-exernal-find-regexp)
; ("s-p r" . project-query-replace-regexp)
; ("s-p s" . project-search)))

;; Configure cc-mode
(use-package cc-mode
  :init
  ;; Use stroustroup / The C Programming Language, 2nd Edition style
  (setq c-default-style '((c-mode . "stroustrup")))
  (setq c-indent-comment-alist '((other . (column . 0)))))
1
;; eradio
(use-package eradio
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
  :bind (("s-r p" . eradio-play)
	 ("s-r s" . eradio-stop))
  :chords (("rP" . eradio-play)
	   ("rS" . eradio-stop)))

;; font setter
(defun set-font ()
  "Select font."
  (interactive)
  (set-frame-font (completing-read "Font: " (x-list-fonts "*"))))
;; Customize
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(eradio-player
   '("/Applications/VLC.app/Contents/MacOS/VLC" "--no-video" "-I" "rc"))
 '(package-selected-packages
   '(ctrlf prescient which-key selectrum use-package-chords eradio magit use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
