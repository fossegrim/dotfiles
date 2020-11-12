;; rss.el - feed reader configuration
(use-package elfeed
  :init
  (setq elfeed-feeds
	'("https://fossegr.im/feed.xml"
	  "https://protesilaos.com/codelog.xml"))
  :bind ("C-c l e" . elfeed))
