#!/bin/bash

DOTFILE_PATH="$(cd $(dirname $0)/.. && pwd)"

ln -snfv "$DOTFILE_PATH/ibus-mozc/.pam_environment" "$HOME/.pam_environment"

ln -snfv "$DOTFILE_PATH/ibus-mozc/ibus-kimpanel.desktop" "$HOME/.local/share/applications/ibus-kimpanel.desktop"