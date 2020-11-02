;; package.el – Melpa and use-package configurations
;; Configure Melpa
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Implicitly :ensure t
(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; Implicitly :demand t
(setq use-package-always-demand t) ; I prefer waiting for stuff to load when i launch emacs than later on.

;; Make it possible to set keychords in use-package
(use-package use-package-chords
  :config
  (key-chord-mode 1))
