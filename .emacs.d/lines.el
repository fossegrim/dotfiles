;; lines.el - line number configuration
;; use relative line numbers
(add-hook 'find-file-hook 'display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
;; Do not display backslash(\) at to illustrate that a truncated line. Instead rely on line numbers to tell.
(set-display-table-slot standard-display-table 'wrap ?\ )
