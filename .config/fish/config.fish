# pyenv setting
set -x PATH $HOME/.pyenv/bin $PATH
. (pyenv init - | psub)

# eclipsesetting
set -x CLASSPATH $HOME/Java/GJVim/bin/GJVim $CLASSPATH

# mybin setting
set -x PATH $HOME/mybin $PATH
