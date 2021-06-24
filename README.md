# dotfiles

I'm using Manjaro Linux, so describe how to install packages on Manjaro Linux.


## How to setup

After installing a certain package, please run the following command

```bash
./<package_name>/symbolic.sh
```

## [alacritty](https://github.com/alacritty/alacritty)

```bash
sudo pacman -S alacritty
```

## environment_variables

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
