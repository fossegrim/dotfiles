;; Define a the prefix command bound to <f7>.
;; My foot pedal simulates pressing the F7 key when pressed to the bottom, making the prefix command effecitevly bound to my pedal.
;; The keybindings found here are generally inspired by the default keybindings, but more pleasant.
(define-prefix-command 'olav-pedal-map)
(global-set-key (kbd "<f7>") olav-pedal-map)
;; olav-pedal-map replaces ctl-x-map and ctl-h-map
(global-set-key (kbd "C-x") nil)
(global-set-key (kbd "C-h") nil)
;; it also replaces M-x
(global-set-key (kbd "M-x") nil)

;; TODO make an emacs patch that adds count-buffers and count-frames analagous to count-windows to emacs source
(defun olav-window-other-or-split-below ()
  (interactive)
  (if (> (count-windows 0) 1)
      (other-window 1)
    ;; switch-to-buffer-other-window is NOT equivalent to the following two function calls, because they will always split horizontally which is not the case for switch-to-buffer-other-window.
    (split-window-below)))
(define-key olav-pedal-map (kbd "o") 'olav-window-other-or-split-below)

(define-key olav-pedal-map (kbd ",") 'beginning-of-buffer) ;; same as M-<, but without Meta and shift
(define-key olav-pedal-map (kbd ".") 'end-of-buffer) ;; same as M-., but without Meta and shift
(define-key olav-pedal-map (kbd "b") 'switch-to-buffer)
(define-key olav-pedal-map (kbd "k") 'kill-buffer)
(define-key olav-pedal-map (kbd "1") 'delete-other-windows)
(define-key olav-pedal-map (kbd "2") 'split-window-below)
(define-key olav-pedal-map (kbd "3") 'split-window-right)
(define-key olav-pedal-map (kbd "4") 'query-replace-regex)
(define-key olav-pedal-map (kbd "5") 'query-replace)
(define-key olav-pedal-map (kbd "0") 'delete-window)
(define-key olav-pedal-map (kbd "f") 'find-file)
(define-key olav-pedal-map (kbd "d") 'dired)
(define-key olav-pedal-map (kbd "g") 'magit)
(define-key olav-pedal-map (kbd "s") 'save-buffer)
(define-key olav-pedal-map (kbd "w") 'write-file)
(define-key olav-pedal-map (kbd "x") 'execute-extended-command)
(define-key olav-pedal-map (kbd ";") 'comment-line)
(define-key olav-pedal-map (kbd "t") 'eshell) ;; t is only used because it is a conveient and e is in use
(define-key olav-pedal-map (kbd "i") 'info)

(define-prefix-command 'olav-pedal-eval-map)
(define-key olav-pedal-map (kbd "e") 'olav-pedal-eval-map)
(define-key olav-pedal-eval-map (kbd "s") 'eval-last-sexp)
(define-key olav-pedal-eval-map (kbd "b") 'eval-buffer)
(define-key olav-pedal-eval-map (kbd "e") 'eval-expression)

(define-prefix-command 'olav-pedal-help-map)
(define-key olav-pedal-map (kbd "h") 'olav-pedal-help-map)
(define-key olav-pedal-help-map (kbd "f") 'describe-function)
(define-key olav-pedal-help-map (kbd "c") 'describe-key-briefly)
(define-key olav-pedal-help-map (kbd "k") 'describe-key)
(define-key olav-pedal-help-map (kbd "v") 'describe-variable)

