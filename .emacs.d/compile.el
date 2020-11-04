;; compile.el – M-x [re]compile configurations
(setq compile-command "make")
(global-set-key (kbd "C-c c") 'compile)
(global-set-key (kbd "C-c r") 'recompile)
