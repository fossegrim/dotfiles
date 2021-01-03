;; fx.el - keybindings of the form Fx y where x and y are the digit keys
;; f1-f4 and 1-4 can be pressed while fingers rest in one position the same goes for f7-f10 and 7-0.
;; stretching is uncomfortable, therefore the the keybindings i make use only keys from one of these groups.
;; Enable "System Preferences > Keyboard > Use F1, F2, etc. keys as standard function keys", to avoid having to hold down Fn at the same itme
(global-unset-key (kbd "C-h")) ;; C-h is a nice key, now its free
(global-unset-key (kbd "C-x")) ;; C-x is replaces by f2 and


(progn
  (define-prefix-command 'olav-help-map)
  (global-set-key (kbd "<f1>") 'olav-help-map)
  (global-unset-key (kbd "C-h")) ;; C-h is a nice key, now its free

  (define-key olav-help-map (kbd "<f4>") 'describe-function)
  (define-key olav-help-map (kbd "4") 'where-is)

  (define-key olav-help-map (kbd "<f3>") 'describe-key)
  (define-key olav-help-map (kbd "3") 'describe-key-briefly)

  (define-key olav-help-map (kbd "<f2>") 'describe-variable)
  (define-key olav-help-map (kbd "2") 'describe-package) ;; maybe replace with describe-mode

  (define-key olav-help-map (kbd "1") 'describe-mode)
  )

(progn
  ;; this map is mainly for windows|buffers because I mostly rely on OS shortcuts to manage frames.
  ;; the frame shortcut olav-frame-other-or-make was just included because i had a key left :-)
  (define-prefix-command 'olav-frame|window|buffer-map)
  (global-set-key (kbd "<f2>") olav-frame|window|buffer-map)

  (defun olav-window-other-or-split-below ()
    "If there is more than one window in the current frame, switch to other window, otherwise split window below."
    (interactive)
    (if (> (count-windows 0) 1)
	(other-window 1)
      (split-window-below)))
  (define-key olav-frame|window|buffer-map (kbd "<f4>") 'switch-to-buffer)
  (define-key olav-frame|window|buffer-map (kbd "4") 'kill-buffer)

  (define-key olav-frame|window|buffer-map (kbd "<f3>") 'split-window-right)
  (define-key olav-frame|window|buffer-map (kbd "3") 'split-window-below)

  (define-key olav-frame|window|buffer-map (kbd "<f2>") 'delete-other-windows)
  (define-key olav-frame|window|buffer-map (kbd "2") 'delete-window)

  (define-key olav-frame|window|buffer-map (kbd "<f1>") 'olav-window-other-or-split-below)
  (defun olav-frame-other-or-make ()
    "If there is more than one frame, switch to other frame, otherwise make a new frame."
    (interactive)
    (if (> (length (frame-list)) 1)
	(other-frame 1)
      (make-frame)))
  (define-key olav-frame|window|buffer-map (kbd "1") 'olav-frame-other-or-make))

(progn
  (define-prefix-command 'olav-project-map)
  (global-set-key (kbd "<f7>") olav-project-map)

  (define-key olav-project-map (kbd "<f10>") 'magit)
  (define-key olav-project-map (kbd "0") 'olav-projectile-update-search-path)

  (define-key olav-project-map (kbd "<f9>") 'projectile-add-known-project)
  (define-key olav-project-map (kbd "9") 'projectile-remove-known-project)

  (define-key olav-project-map (kbd "<f8>") 'projectile-grep)
  (define-key olav-project-map (kbd "8") 'projectile-replace)

  (define-key olav-project-map (kbd "<f7>") 'projectile-find-file)
  (define-key olav-project-map (kbd "7") 'projectile-switch-project))

(progn
  (define-prefix-command 'olav-basic-map)
  (global-set-key (kbd "<f8>") olav-basic-map)

  (define-key olav-basic-map (kbd "<f10>") 'eval-buffer)
  (define-key olav-basic-map (kbd "0") 'eval-region)

  (define-key olav-basic-map (kbd "<f9>") 'eval-last-sexp)
  (define-key olav-basic-map (kbd "9") 'eval-expression)

  (define-key olav-basic-map (kbd "<f8>") 'save-file)
  (define-key olav-basic-map (kbd "8") 'write-file)
  
  (define-key olav-basic-map (kbd "<f7>") 'find-file)
  (define-key olav-basic-map (kbd "7") 'dired)
 )
;; eval|exec-map - find-file, eradio

