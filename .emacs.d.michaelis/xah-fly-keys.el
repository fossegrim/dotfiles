(when (not (package-installed-p 'xah-fly-keys)) (package-install 'xah-fly-keys))
(require 'xah-fly-keys)
(xah-fly-keys-set-layout "dvorak")
(xah-fly-keys 1)
