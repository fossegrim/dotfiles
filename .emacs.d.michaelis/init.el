(load-file "~/.emacs.d/melpa.el")
(load-file "~/.emacs.d/which-key.el")
(load-file "~/.emacs.d/xah.el")
(load-file "~/.emacs.d/go-mode.el")
(load-file "~/.emacs.d/magit.el")
(load-file "~/.emacs.d/eradio.el")
(load-file "~/.emacs.d/erc.el")

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
