;; org.el – org-mode configurations
(use-package org
  :if (string-equal system-type "darwin")
  :init
  (setq org-agenda-files '("~/Projects/org/todo.org")
	org-todo-keywords '("TODO" "|" "DONE" "CANCELLED"))
  :config
  (require 'org-tempo)
  :bind
  ("C-c o l" . org-store-link))
