#!/bin/bash

# dotfiles
git clone https://github.com/koheishoji/dotfiles.git ~/dotfiles

# fish
mkdir "$HOME/.config/fish"
ln -sf ~/dotfiles/.config/fish/config.fish ~/.config/fish/config.fish

# NeoVIM
mkdir "$HOME/.config/nvim"
ln -sf ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/.config/nvim/dein.toml ~/.config/nvim/dein.toml
ln -sf ~/dotfiles/.config/nvim/dein_lazy.toml ~/.config/nvim/dein_lazy.toml

# emacs
ln -sf ~/dotfiles/.emacs.d ~/.emacs.d
ln -sf ~/dotfiles/.spacemacs ~/.spacemacs

# tmux
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

