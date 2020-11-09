;; custom.el – customize configurations
(setq custom-file "~/.emacs.d/custom.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("5afcf29b3d73c0959c772321f98735ccb99cca2cf054279202f7568a67828c6c" default))
 '(eradio-player '("mpv" "--no-video" "--no-terminal"))
 '(erc-modules
   '(autojoin button completion fill irccontrols list log match menu move-to-prompt netsplit networks noncommands readonly ring stamp track))
 '(line-number-mode nil)
 '(package-selected-packages
   '(openwith org-mode markdown-mode exec-path-from-shell persp-mode which-key ctrlf eradio magit selectrum-prescient selectrum use-package))
 '(send-mail-function 'mailclient-send-it))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
