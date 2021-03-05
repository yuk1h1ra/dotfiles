#!/bin/bash

DOTFILE_PATH="$(cd $(dirname $0)/.. && pwd)"

# Symbolic init.vim
if [ ! -d "$HOME/.config/nvim" ]; then
  mkdir -p "$HOME/.config/nvim"
fi
ln -snfv "$DOTFILE_PATH/neovim/init.vim" "$HOME/.config/nvim/init.vim"

# Install vim-plug
if [ ! -d "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi
