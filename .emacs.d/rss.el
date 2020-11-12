;; rss.el - feed reader configuration
(use-package elfeed
  :init
  (setq elfeed-feeds
	'("https://fossegr.im/feed.xml"
	  "https://protesilaos.com/codelog.xml"))
  :config
  (defun olav-elfeed ()
    (interactive)
    (persp-switch "elfeed")
    (elfeed))
  :bind ("C-c l l" . olav-elfeed))
