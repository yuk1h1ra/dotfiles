#!/bin/bash

DOTFILE_PATH="$(cd $(dirname $0)/.. && pwd)"

ln -snfv "$DOTFILE_PATH/libinput-gestures/libinput-gestures.conf" "$HOME/.config/libinput-gestures.conf"
