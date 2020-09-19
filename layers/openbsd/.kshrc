# Load git configuration if the layer is in use
test -f ~/.config/git/shell-configuration && . ~/.config/git/shell-configuration

# No functionality that can be implemented as a shellscript should be an alias
alias ..="cd .."
alias c="cd"
alias p="pwd" # There is a ksh builtin in additio to /bin/pwd

# All the variables set here are documented in KSH(1)
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

# ~/bin is for binaries
# ~/sh is for scripts
export PATH="$HOME/sh:$HOME/bin:$PATH"

# The two following commands needs to be in this precise order. If they are in the opposite order ksh enters vi mode which breaks a lot of features including Ctrl-l clearing, UP / DOWN / Ctrl-p / Ctrl-n history navigation, LEFT / RIGHT / Ctrl-b / Ctrl-f / Ctrl-a / Ctrl-e prompt navigation and Ctrl-r Emacs-like history isearch.
export EDITOR=nvi
set -o emacs

export PAGER=less
export FCEDIT="$EDITOR"
export PS1='$ '
