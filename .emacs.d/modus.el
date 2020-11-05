;; modus.el– prot's wonderful themes
;; the configurations herein are based on the modus info manual's examples

(defun olav-disable-all-themes ()
  (interactive)
  (mapc #'disable-theme custom-enabled-themes))

;; The melpa-stable versions of the modus themes are rolling release and the elpa versions are stable. The reason I using the rolling release version instead of the stable version is that the stable version is out of date. At the time of writing this the latest stable version is 0.12 and the latest upstream release is 0.13. 0.12 does not ship the info manual and as such I prefer to use the rolling release version.
(use-package modus-vivendi-theme
  :init
  (use-package modus-operandi-theme) ;; centralize the configurations
  :config
  (load-theme 'modus-operandi t t)
  (run-at-time "05:00" (* 60 60 24)
	       (lambda ()
		 (enable-theme 'modus-operandi)))
  
  (load-theme 'modus-vivendi t t)
  (run-at-time "20:00" (* 60 60 24)
	       (lambda ()
		 (enable-theme 'modus-vivendi)))

  (defun olav-modus-themes-toggle ()
    "Toggle between `modus-operandi' and `modus-vivendi' themes."
    (interactive)
    (if (eq (car custom-enabled-themes) 'modus-operandi)
	(progn
          (disable-theme 'modus-operandi)
          (load-theme 'modus-vivendi t))
      (disable-theme 'modus-vivendi)
      (load-theme 'modus-operandi t)))
  :bind ("C-c t" . 'olav-modus-themes-toggle))

;; Remove gui clutter
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(set-fringe-mode 0)
