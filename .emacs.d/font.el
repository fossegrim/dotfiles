;; font.el – font stuff?
(defun set-font ()
  "Select font."
  (interactive)
  (set-frame-font (completing-read "Font: " (x-list-fonts "*"))))
