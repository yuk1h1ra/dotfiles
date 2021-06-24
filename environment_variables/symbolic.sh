#!/bin/bash

DOTFILE_PATH="$(cd $(dirname $0)/.. && pwd)"

ln -snfv "$DOTFILE_PATH/environment_variables/.pam_environment" "$HOME/.pam_environment"
