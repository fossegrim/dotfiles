;; lines.el - line number configuration
;; use relative line numbers
(add-hook 'find-file-hook 'display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
