dotfiles
===================
![screenshot](https://github.com/madaramost/.dotfiles/blob/master/Screenshot.png)

(Here's what my setup looks like. Tmux/Vim/Ranger)

## Notes
befor install make sure you have installed:
```
vim
tmux
rango
```

and clone vundle and tmux plugins manager to home directory:
for vundle:
```
$git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

for tmux plugin manager:
```
$git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## ubuntu needed

make sure you installed:
```
build-essential
npm
mono-complete /*after install run npm install xbuild*/
cargo
golang-go
```
## Installation

```
$git clone --separate-git-dir=$HOME/.dotfiles https://github.com/sentakuhm/.dotfiles.git tmpdotfiles
$rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
$rm -r tmpdotfiles
```

## Treminal theme:
Only upported terminals:
```
   mintty and deriviates
   guake
   iTerm2
   elementary terminal (pantheon/elementary)
   mate-terminal
   gnome-terminal
   tilix
   xfce4-terminal
```
i'm using Gruvbox, to change one go to: 
https://mayccoll.github.io/Gogh/
you'll find all themes, to change one open terminal then:
```
$bash -c  "$(wget -qO- https://git.io/vQgMr)"
```
enter number of desired them and enter.
