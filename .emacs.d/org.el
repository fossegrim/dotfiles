;; org.el – org-mode configurations
(use-package org
  :init
  (setq org-agenda-files '("~/Projects/org/todo.org"))
  :config
  (require 'org-tempo)
  :bind
  ("C-c o l" . org-store-link))
