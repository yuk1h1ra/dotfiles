# dotfiles

I'm using Manjaro Linux KDE edition, so describe how to install packages on Manjaro Linux.

## **How to symbolic link**

After installing a certain package, please run the following command

```bash
./<package_name>/symbolic.sh
```

## **How to install**

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

## [poetry](https://github.com/poetry/poetry)

```bash
sudo pacman -S python-poetry
```

after installed, run the following command for enable tab completion:

```bash
poetry completions zsh > ~/.zprezto/modules/completion/external/src/_poetry
```

if create the virtualenv inside the project's root directory, run the following command:

```bash
poetry config virtualenvs.in-project true
```

## [nvm](https://github.com/nvm-sh/nvm)

```bash
sudo pacman -S nvm
```

after installed, edit .zshrc:

```.zshrc
## nvm
source /usr/share/nvm/init-nvm.sh
```

## [burpsuite](https://portswigger.net/burp)

```bash
yay -S burpsuite
```

after installed,

```bash
sudoedit /etc/environment
```

Add the following at the end

```/etc/environment
_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
```

## [alacritty](https://github.com/alacritty/alacritty)

```bash
sudo pacman -S alacritty
```

## [fcitx-mozc](https://wiki.archlinux.jp/index.php/Fcitx)

```bash
sudo pacman -S fcitx-mozc manjaro-asian-input-support-fcitx
sudo pacman -S kcm-fcitx
```

after installed,

```bash
fcitx-autostart
reboot
```

reboot last time

## [fontconfig](https://wiki.archlinux.jp/index.php/%E3%83%95%E3%82%A9%E3%83%B3%E3%83%88%E8%A8%AD%E5%AE%9A)

```bash
sudo pacman -S adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts
yay -S ttf-hackgen-nerd
```

after symbolic link,

```bash
fc-cache -v
```

## [libinput-gestures](https://github.com/bulletmark/libinput-gestures)

```bash
sudo gpasswd -a $USER input
sudo pacman -S wmctrl xdotool
sudo pacman -S libinput-gestures
```

after installed,

```bash
libinput-gestures-setup desktop
libinput-gestures-setup autostart
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
