## dotfiles

### Notes
* Before installing dotfiles make sure you have installed:<br>
`$sudo pacman -S alacritty vim tmux powerline zsh-autosuggestions zsh-syntax-highlighting most`

* For *"i3wm"* install:<br>
`$sudo pacman -S i3-gaps dunst picom ncmpcpp rofi mpd vifm`
* From AUR:<br>
`cava polybar pipes.sh`

* oh-my-zsh *"zsh themes"* to install run this command:<br>
```
$sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
* and clone vim-plug and tmux plugins manager to home directory:<br>
for vim-plug:<br>
```
$curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

* For tmux plugin manager:<br>
```
$git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Installation

```
$git clone --separate-git-dir=$HOME/.dotfiles https://github.com/sentakuhm/.dotfiles.git tmpdotfiles
$rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
$rm -r tmpdotfiles
```
* run vim then `:PlugInstall` to install all needed plugins and exit.

* run tmux then `Ctrl+a` then click `shift+i` to install all plugins and exit. 

### Tmux Commands

* `Ctrl + a`	Command
* `Command + t`	New window
* `Command + w`	Kill pane
* `Command + q`	Kill session
* `Command + r`	Reload tmux config
* `Command + z`	Zoom to pane
* `Command + $`	Rename session
* `Command + ,`	Rename window
* `Command + g`	Split vertically
* `Command + h`	Split horizontally
* `Command + ?`	List keyboard shortcuts
* `Command + :`	Command prompt
* `Command + s`	List sessions
* `Command + Ctrl + r`	Reload session
* `Command + Ctrl + s`	Save session
* `Command + Shift + i`	Install plugins
