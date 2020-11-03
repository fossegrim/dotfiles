;; custom.el – customize configurations
(setq custom-file "~/.emacs.d/custom.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(eradio-player '("mpv" "--no-video" "--no-terminal"))
 '(package-selected-packages
   '(persp-mode web-mode svelte k&r sicp which-key ctrlf eradio magit selectrum-prescient selectrum use-package-chords use-package))
 '(send-mail-function 'mailclient-send-it))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
