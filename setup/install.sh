#!/bin/bash

# apt upgrade
yes | sudo apt update
yes | sudo apt upgrade

# change japanese lang to english
env LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update

# zsh
yes | sudo apt install zsh

# Prezto
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh

# Git
yes | sudo apt install git

# vim


# tmux
yes | sudo apt install tmux

# rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

