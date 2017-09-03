#!/bin/bash

# apt upgrade
yes | sudo apt update
yes | sudo apt upgrade

# change japanese lang to english
env LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update

# fish
yes | sudo apt install fish
chsh -s /usr/bin/fish

# fisherman
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
fisher sol

# Git
yes | sudo apt install git

# NeoVIM
yes | sudo apt install software-properties-common
yes | sudo add-apt-repository ppa:neovim-ppa/unstable
yes | sudo apt update
yes | sudo apt install neovim

# tmux
yes | sudo apt install tmux

# rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

