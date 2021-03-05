#!/bin/bash

DOTFILE_PATH="$(cd $(dirname $0)/.. && pwd)"

ln -snfv "$DOTFILE_PATH/tmux/.tmux.conf" "$HOME/.tmux.conf"
