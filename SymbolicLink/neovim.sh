#!/bin/bash

DOTFILE_PATH="$(cd $(dirname $0)/.. && pwd)"

if [ ! -d "$HOME/.config/nvim" ]; then
  mkdir -p "$HOME/.config/nvim"
fi
ln -snfv "$DOTFILE_PATH/.config/nvim/init.vim" "$HOME/.config/nvim/init.vim"
