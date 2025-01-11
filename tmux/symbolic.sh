#!/bin/bash

DOTFILE_PATH="$(cd $(dirname $0)/.. && pwd)"

ln -snfv "$DOTFILE_PATH/tmux/.tmux.conf" "$HOME/.tmux.conf"

# tpm
if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# tmux-powerline
if [ ! -d ~/.config/tmux-powerline/themes ]; then
  mkdir -p ~/.config/tmux-powerline/themes
fi
ln -snfv "$DOTFILE_PATH/tmux/.config/config.sh" "$HOME/.config/tmux-powerline/config.sh"
ln -snfv "$DOTFILE_PATH/tmux/.config/tmux-powerline/themes/simple.sh" "$HOME/.config/tmux-powerline/themes/simple.sh"
