# Load git configuration if the layer is in use
test -f ~/.config/git/shell-configuration && source ~/.config/git/shell-configuration

export PATH="$HOME/sh:$HOME/bin:$PATH"
