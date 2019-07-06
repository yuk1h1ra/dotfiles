#!/bin/bash

DOTFILE_PATH="$(cd $(dirname $0)/.. && pwd)"

ln -snfv "$DOTFILE_PATH/.vimrc" "$HOME/.vimrc"
ln -snfv "$DOTFILE_PATH/.tmux.conf" "$HOME/.tmux.conf"
ln -snfv "$DOTFILE_PATH/.config/nvim/init.vim" "$HOME/.config/nvim/init.vim"
ln -snfv "$DOTFILE_PATH/.config/alacritty/alacritty.yml" "$HOME/.config/alacritty/alacritty.yml"

