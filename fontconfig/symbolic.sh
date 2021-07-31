#!/bin/bash

DOTFILE_PATH="$(cd $(dirname $0)/.. && pwd)"

ln -snfv "$DOTFILE_PATH/fontconfig/fonts.conf" "$HOME/.config/fontconfig/fonts.conf"
