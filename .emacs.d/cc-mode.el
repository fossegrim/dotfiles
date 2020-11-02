;; cc-mode – configurations for cc-mode
(use-package cc-mode
  :init
  ;; Use stroustroup / The C Programming Language, 2nd Edition style
  (setq c-default-style '((c-mode . "stroustrup")))
  (setq c-indent-comment-alist '((other . (column . 0)))))
