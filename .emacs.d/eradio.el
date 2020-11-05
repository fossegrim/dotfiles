;; eradio.el – eradio configuration
(use-package eradio
  :init
  (setq eradio-channels '(("def con - soma fm" . "https://somafm.com/defcon256.pls")
			  ("metal - soma fm" . "https://somafm.com/metal130.pls")
			  ("groove salad - soma fm" . "https://somafm.com/groovesalad256.pls")
			  ("secret agent - soma fm" . "https://www.somafm.com/secretagent.pls")
			  ("cafe - lainon" . "https://lainon.life/radio/cafe.ogg.m3u")
			  ("cyberia - lainon" . "https://lainon.life/radio/cyberia.ogg.m3u")
			  ("everything - lainon" . "https://lainon.life/radio/everything.ogg.m3u")
			  ("swing - lainon" . "https://lainon.life/radio/swing.ogg.m3u")
			  ("bluemars - eobm" . "http://streams.echoesofbluemars.org:8000/bluemars.m3u")
			  ("cryosleep - eobm" . "http://streams.echoesofbluemars.org:8000/cryosleep.m3u")))
  (setq eradio-player '("mpv" "--no-video" "--no-terminal"))

  :bind (("C-c p" . eradio-play)
	 ("C-c s" . eradio-stop)))
