;; eradio.el – eradio configuration
(use-package eradio
  :load-path "~/Projects/eradio"
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
			  ("cryosleep - eobm" . "http://streams.echoesofbluemars.org:8000/cryosleep.m3u")
			  ("death - death.fm" . "http://death.fm/modules/Listen/MP3-hi.pls")
			  ("4059 - 0xfdb.fm"  . "https://music.taro.0xfdb.xyz:8443/stream.flac")
			  ("classical - sonatica.fm" . "https://orion.shoutca.st/tunein/sonatica.pls")
			  ("l's theme (10 hours) - death note" . "https://www.youtube.com/watch?v=bAr1a6zux_8"))
  :bind (("C-c R" . eradio-play)
	 ("C-c r" . eradio-toggle)))
