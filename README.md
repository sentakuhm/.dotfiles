dotfiles
***
![screenshot](https://github.com/sentakuhm/.dotfiles/blob/master/preview.png)

(Here's what my setup looks like. Tmux/Vim/Vifm)
***

### Notes
* before install dotfiles make sure you have installed:<br/>
vim<br/>
tmux<br/>
vifm<br/>
powerline<br/>
most *"for colored man pages"*<br/>
oh-my-zsh *"zsh themes"* to install run this command:<br/>
`$sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)")`<br/>

* and clone vundle and tmux plugins manager to home directory:<br/>
for vundle:<br/>
`$git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

* for tmux plugin manager:<br/>
`$git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

### linux needed

* make sure you installed:<br/>
npm<br/>
mono<br/>
cargo<br/>
golang-go<br/>

### Installation

```
$git clone --separate-git-dir=$HOME/.dotfiles https://github.com/sentakuhm/.dotfiles.git tmpdotfiles
$rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
$rm -r tmpdotfiles
```
* run vim then `:PluginInstall` to install all needed plugins and exit.

* run tmux then `Ctrl+a` then click `shift+i` to install all plugins and exit. 

### Treminal theme:
* Only supported terminals:<br/>
mintty and deriviates<br/>
guake<br/>
iTerm2<br/>
elementary terminal (pantheon/elementary)<br/>
mate-terminal<br/>
gnome-terminal<br/>
tilix<br/>
xfce4-terminal<br/>
i'm using Gruvbox, to change one [Click Here](https://mayccoll.github.io/Gogh/)
you'll find all themes, to change one open terminal then:<br/>
`$bash -c  "$(wget -qO- https://git.io/vQgMr)"`<br/>
enter number of desired theme and click enter.
***

## issues

* if you faced : `E185: Cannot find color scheme 'gruvbox'`
just do:
```
$mkdir ~/.vim/colors
$cp ~/.vim/bundle/gruvbox/colors/gruvbox.vim ~/.vim/colors
```

* if you faced:<br/>
`Error detected while processing VimEnter Auto commands for "*":`<br/>
`E492: Not an editor command: NERDTree`<br/>
add `set rtp+=~/.vim/bundle/nerdtree` to .vimrc before line: `autocmd vimenter * NERDTree` like this
```
set rtp+=~/.vim/bundle/nerdtree
autocmd vimenter * NERDTree
```
save and exit.
***

### Tmux Commands

`Ctrl + a`	Command<br/>
`Command + t`	New window<br/>
`Command + w`	Kill pane<br/>
`Command + q`	Kill session<br/>
`Command + r`	Reload tmux config<br/>
`Command + z`	Zoom to pane<br/>
`Command + $`	Rename session<br/>
`Command + ,`	Rename window<br/>
`Command + g`	Split vertically<br/>
`Command + h`	Split horizontally<br/>
`Command + ?`	List keyboard shortcuts<br/>
`Command + :`	Command prompt<br/>
`Command + s`	List sessions<br/>
`Command + Ctrl + r`	Reload session<br/>
`Command + Ctrl + s`	Save session<br/>
`Command + Shift + i`	Install plugins<br/>
