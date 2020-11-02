;; selectrum.el – configurations for the superior incremental narrowing package
(use-package selectrum
  :init
  (selectrum-mode +1)
  (setq selectrum-fix-minibuffer-height 15) ; Use a fixed minibuffer height
  :bind ("C-c z" . selectrum-repeat))

(use-package selectrum-prescient
  :after selectrum
  :init
  (setq prescient-history-length 1000)
  :config
  (prescient-persist-mode +1)
  (selectrum-prescient-mode +1))
