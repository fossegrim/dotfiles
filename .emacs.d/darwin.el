;; darwin.el – macos exclusive configurations
;; there are some macos stuff in other sections too
;; Use left-alt as as meta, and right-alt for inputting special characters
(when (string-equal system-type "darwin")
  (setq mac-option-modifier 'meta)
  (setq mac-right-option-modifier 'none))
