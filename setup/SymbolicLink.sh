#!/bin/bash

DOTFILE_PATH="$(cd $(dirname $0)/.. && pwd)"

# vimrc
ln -snfv "$DOTFILE_PATH/.vimrc" "$HOME/.vimrc"

# tmux.conf
ln -snfv "$DOTFILE_PATH/.tmux.conf" "$HOME/.tmux.conf"

# neovim
if [ ! -d "$HOME/.config/nvim" ]; then
  mkdir -p "$HOME/.config/nvim"
fi
ln -snfv "$DOTFILE_PATH/.config/nvim/init.vim" "$HOME/.config/nvim/init.vim"
ln -snfv "$DOTFILE_PATH/.config/nvim/template/" "$HOME/.config/nvim/template"

# alacritty
if [ ! -d "$HOME/.config/alacritty" ]; then
  mkdir -p "$HOME/.config/alacritty"
fi
ln -snfv "$DOTFILE_PATH/.config/alacritty/alacritty.yml" "$HOME/.config/alacritty/alacritty.yml"

# gitignore_global
ln -snfv "$DOTFILE_PATH/.gitignore_global" "$HOME/.gitignore_global"
