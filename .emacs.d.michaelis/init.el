(load-file "~/.emacs.d/melpa.el")
(load-file "~/.emacs.d/which-key.el")
(load-file "~/.emacs.d/xah.el")
(load-file "~/.emacs.d/pedal.el")
(load-file "~/.emacs.d/go-mode.el")
(load-file "~/.emacs.d/magit.el")
(load-file "~/.emacs.d/eradio.el")

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
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (modalka eradio which-key xah-fly-keys magit go-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
