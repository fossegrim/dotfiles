;; magit.el – configurations for the magit git interface
(use-package magit
  :bind (;; 20%
	 ("C-c k k" . magit)
	 ;; 80%
	 ("C-c k s" . magit-stage-file)
	 ("C-c k u" . magit-unstage-file)
	 ("C-c k r" . magit-file-delete)
	 ("C-c k d" . magit-diff-staged)
	 ("C-c k c" . magit-file-checkout)
	 ("C-c k l" . magit-log-all)
	 ("C-c k p" . magit-push-to-remote)))
