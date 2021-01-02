(when (not (package-installed-p 'eradio)) (package-install 'eradio))

(define-key xah-fly-leader-key-map (kbd "2 t") 'eradio-toggle)
(define-key xah-fly-leader-key-map (kbd "2 p") 'eradio-play)
(define-key xah-fly-leader-key-map (kbd "2 s") 'eradio-stop)

(setq eradio-channels '(("def con - soma fm" . "https://somafm.com/defcon256.pls")          ;; electronica with defcon-speaker bumpers
                        ("metal - soma fm"   . "https://somafm.com/metal130.pls")           ;; \m/
                        ("cyberia - lainon"  . "https://lainon.life/radio/cyberia.ogg.m3u") ;; cyberpunk-esque electronica
                        ("cafe - lainon"     . "https://lainon.life/radio/cafe.ogg.m3u")))  ;; boring ambient, but with lain

(setq eradio-player '("mpv" "--no-video" "--no-terminal"))
