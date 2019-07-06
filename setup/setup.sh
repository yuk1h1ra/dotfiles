#!/bin/bash

DOTFILE_SETUP_PATH="$(cd $(dirname $0) && pwd)"

source "$DOTFILE_SETUP_PATH/VimPlugInstallation.sh"
source "$DOTFILE_SETUP_PATH/SymbolicLink.sh"
