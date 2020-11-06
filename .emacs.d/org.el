;; org.el – org-mode configurations
;; Make it possible to insert code blocks with <s
(use-package org
  :config
  (require 'org-tempo)
  :bind
  ("C-c o l" . org-store-link)
  )
