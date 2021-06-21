#!/bin/bash

DOTFILE_PATH="$(cd $(dirname $0)/.. && pwd)"

ln -snfv "$DOTFILE_PATH/fcitx-mozc/.pam_environment" "$HOME/.pam_environment"
