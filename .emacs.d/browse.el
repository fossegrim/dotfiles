;; browse.el – web browsing configurations
(defun olav-eww-browse-url-of-file ()
  (interactive)
  (eww-open-file (buffer-file-name (current-buffer))))
(global-set-key (kbd "C-c w")  'olav-eww-browse-url-of-file)
(global-set-key (kbd "C-c W")  'browse-url-of-file) ;; s-afari
