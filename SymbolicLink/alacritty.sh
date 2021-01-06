#!/bin/bash

DOTFILE_PATH="$(cd $(dirname $0)/.. && pwd)"

if [ ! -d "$HOME/.config/alacritty" ]; then
  mkdir -p "$HOME/.config/alacritty"
fi
ln -snfv "$DOTFILE_PATH/.config/alacritty/alacritty.yml" "$HOME/.config/alacritty/alacritty.yml"