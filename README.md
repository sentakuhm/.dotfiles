dotfiles
===================
![screenshot](https://github.com/madaramost/.dotfiles/blob/master/Screenshot.png)

(Here's what my setup looks like. Tmux/Vim/Ranger)

## Installation:

```
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/anandpiyer/.dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
```
or just use stow:

```
$git clone git://github.com/thoughtbot/.dotfiles.git ~/.dotfiles
$stow .dotfiles
```

## Treminal theme:
i'm using Gruvbox, to change one go to: 
https://mayccoll.github.io/Gogh/
you'll find all themes, to change one open terminal then:
```
$bash -c  "$(wget -qO- https://git.io/vQgMr)"
```
enter number of desired them and enter.
