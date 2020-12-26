;; toggle.el - toggle minor modes
;; c-c t m - toggle modus theme, defined in modus.el
;; TODO Add function olav-artist-mode that toggles artist mode and also disables
;;      modes that conflict with artist-mode (display-line-numbers-mode for
;;      example)
(global-set-key (kbd "C-c t a") 'artist-mode)
(global-set-key (kbd "C-c t r") 'ruler-mode)
(global-set-key (kbd "C-c t h") 'hide-mode-line-mode)
(global-set-key (kbd "C-c t d") 'display-line-numbers-mode)
(global-set-key (kbd "C-c t t") 'toggle-truncate-lines)
(global-set-key (kbd "C-c t b") 'tool-bar-mode)
(global-set-key (kbd "C-c t o") 'overwrite-mode) ; I always enable this by accident haha
