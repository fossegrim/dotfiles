# Load common shell configuration
# If I change user from ksh the original user's configuration is still sourced.
# Seeing as there is only a ~/.shellrc in olav's $HOME I should only load it
# then.
[ "$USER" = olav ] && . ~/.shellrc
