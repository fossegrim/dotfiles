;; magit.el – configurations for the magit git interface
(use-package magit
  :init
  (setq magit-clone-default-directory "~/vc/")
  (setq magit-clone-set-remote.pushDefault t) ; set it without prompting
  (setq magit-save-repository-buffers nil) ;; don't prompt to save files when running magit commands
  :config
  ;; Add -m argument to magit-tag. See https://emacs.stackexchange.com/questions/61699 and https://github.com/magit/magit/pull/4247
  (transient-define-argument magit-tag:--message ()
    :description "Use message"
    :class 'transient-option
    :shortarg "-m"
    :argument "--message="
    ;; Empty (annotated)tag messages must be permitted because it is
    ;; impossible to create them interactively.
    :allow-empty t)
  (transient-append-suffix
    'magit-tag
    "-u"
    '(magit-tag:--message)))
(use-package gitignore-mode)
(use-package gitattributes-mode)
(use-package gitconfig-mode)
