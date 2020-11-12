;; rss.el - feed reader configuration
(use-package elfeed
  :init
  (setq elfeed-feeds
	'(("https://fossegr.im/feed.xml" blog)
	  ("https://sachachua.com/blog/feed/" blog)
	  ("https://protesilaos.com/codelog.xml" blog))))
