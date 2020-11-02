;; magit.el – configurations for the magit git interface
(use-package magit
  :bind (("s-g" . nil) ; unbind key, so that it can be used as a modifier
	 ; 20%
	 ("s-g g" . magit)
	 ; 80%
	 ("s-g s" . magit-stage-file)
	 ("s-g u" . magit-unstage-file)
	 ("s-g r" . magit-file-delete)
	 ("s-g d" . magit-diff-staged)
	 ("s-g c" . magit-file-checkout)
	 ("s-g l" . magit-log-all)
	 ("s-g p" . magit-push-to-remote)))
