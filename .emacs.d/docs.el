;; docs.el – documentation browsing configurations
;; info
(setq Info-hide-note-references nil) 	;show the markup, maybe i will subconciously learn how to write info :p
(setq Info-enable-active-nodes t) 	;allow executing inline lisp code
;; dash
(use-package dash-at-point
  :bind (("C-c a" . dash-at-point)
	 ("C-c x" . dash-at-point-with-docset)))
