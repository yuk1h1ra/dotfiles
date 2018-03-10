# pyenv setting
set -x PATH $HOME/.pyenv/bin $PATH
. (pyenv init - | psub)

# mybin setting
set -x PATH $HOME/mybin $PATH

# neovim
alias vim="nvim"
