(defun olav-is-mac-os () (string-equal system-type "darwin"))
(defun olav-is-gnu-linux () (string-equal system-type "gnu/linux"))
(defun olav-is-openbsd () (string-equal system-type "darwin"))
(defun olav-open-project ()
  (interactive)
  (dired (completing-read "Project: " (directory-files "~/Projects") nil t)))



				   
