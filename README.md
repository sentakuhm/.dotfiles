## dotfiles

### Notes
before install dotfiles make sure you have installed:
* vim
* tmux
* vifm
* powerline
* zsh-autosuggestions
* zsh-syntax-highlighting
* most *"for colored man pages"*
* oh-my-zsh *"zsh themes"* to install run this command:<br>
`
$sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
`
* and clone vim-plug and tmux plugins manager to home directory:<br>
for vim-plug:<br>
```
$curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

for tmux plugin manager:<br>
```
$git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Installation

```
$git clone --separate-git-dir=$HOME/.dotfiles https://github.com/sentakuhm/dotfiles.git tmpdotfiles
$rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
$rm -r tmpdotfiles
```
* run vim then `:PlugInstall` to install all needed plugins and exit.

* run tmux then `Ctrl+a` then click `shift+i` to install all plugins and exit. 

### Treminal theme:
* Only supported terminals:
* mintty and deriviates
* guake
* iTerm2
* elementary terminal (pantheon/elementary)
* mate-terminal
* gnome-terminal
* tilix
* xfce4-terminal<br>
i'm using Gruvbox, to change one [Click Here](https://mayccoll.github.io/Gogh/)
you'll find all themes, to change one open terminal then:<br/>
`
$bash -c  "$(wget -qO- https://git.io/vQgMr)"
`<br>
enter number of desired theme and click enter.
***

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
