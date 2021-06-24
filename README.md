# dotfiles

I'm using Manjaro Linux KDE edition, so describe how to install packages on Manjaro Linux.


## How to setup

After installing a certain package, please run the following command

```bash
./<package_name>/symbolic.sh
```

## [prezto](https://github.com/sorin-ionescu/prezto)

Clone the repository:

```bash
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

Create a new Zsh configuration by copying/linking the Zsh configuration files provided:

```bash
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

Set Zsh as your default shell:

```bash
chsh -s /usr/bin/zsh
```

## [alacritty](https://github.com/alacritty/alacritty)

```bash
sudo pacman -S alacritty
```

## [environment_variables](https://wiki.archlinux.jp/index.php/%E7%92%B0%E5%A2%83%E5%A4%89%E6%95%B0)

### [fcitx-mozc](https://wiki.archlinux.jp/index.php/Fcitx)

```bash
sudo pacman -S fcitx-mozc
sudo pacman -S kcm-fcitx   # OR fcitx-configtool
```

after installed,

```bash
fcitx-autostart
reboot
```

## [libinput-gestures](https://github.com/bulletmark/libinput-gestures)

```bash
sudo gpasswd -a $USER input
sudo pacman -S wmctrl xdotool
sudo pacman -S libinput-gestures
```

after installed,

```bash
libinput-gestures desktop
libinput-gestures autostart
```

## [neovim](https://github.com/neovim/neovim)

```bash
sudo pacman -S neovim python-pynvim
```

## [tmux](https://github.com/tmux/tmux)

```bash
sudo pacman -S tmux
```

## [vim](https://github.com/vim/vim)

```bash
sudo pacman -S vim
```
