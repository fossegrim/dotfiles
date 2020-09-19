# Load git configuration if the layer is in use
test -f ~/.config/git/shell-configuration && . ~/.config/git/shell-configuration

# ~/bin is for binaries
# ~/sh is for scripts
export PATH="$HOME/sh:$HOME/bin:$PATH"
