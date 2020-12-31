(when (not (package-installed-p 'magit)) (package-install 'magit))
 
(define-key xah-fly-leader-key-map (kbd "v") 'magit-status)
(define-key xah-fly-leader-key-map (kbd "V") 'magit-dispatch)

;; Enter insert mode when opening magit
(add-hook 'magit-status-mode-hook 'xah-fly-insert-mode-activate)
(add-hook 'magit-popup-mode-hook 'xah-fly-insert-mode-activate)

 ;; Enter command mode when exiting magit
(defun olav-quit-window-and-xah-fly-command-mode-activate (&optional kill window)
  "Like quit-window, but also activate xah-fly-command-mode"
  (interactive "P")
  (quit-window kill window)
  (xah-fly-command-mode-activate))
(setq magit-bury-buffer-function 'olav-quit-window-and-xah-fly-command-mode-activate)

(require 'magit-status)
;; Use the dvorak xah-fly-keys up key "c" for going up {lines,sections}
(define-key magit-status-mode-map (kbd "c") 'magit-section-backward)
(define-key magit-status-mode-map (kbd "p") 'magit-commit) ; bind the overwritten command (magit-commit) to the original key of magit-section-backward "p"
;; I tried binding C-c in magit-status-mode-map, but it did not work.
;; Therefore I use M-c for magit-previous-line		
(define-key magit-status-mode-map (kbd "M-c") 'magit-previous-line)
;; Use the dvorak xah-fly-keys down key "t" for going down {lines,sections}
(define-key magit-status-mode-map (kbd "t") 'magit-section-forward)
(define-key magit-status-mode-map (kbd "n") 'magit-tag) ; bind the overwritten command (magit-tag) to the original key of magit-section-forward "n"
(define-key magit-status-mode-map (kbd "M-t") 'magit-next-line) ;; this overwrites transpose-char, which is of no use in magit-status anyway
