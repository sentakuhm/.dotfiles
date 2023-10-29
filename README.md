## dotfiles

### Notes
* Before installing dotfiles make sure you installed
```
$sudo pacman -S alacritty foot nvim tmux zsh zsh-autosuggestions zsh-syntax-highlighting
```

* For *"Hyprland"* install
```
$yay -S  hyprland wofi nvimpager waybar-hyprland-git wl-clipboard nwg-look hyprpicker-git grim slurp dunst wlogout imv ueberzugpp swww gtklock qt5ct qt6ct qt5-wayland qt6-wayland qt5-quickcontrols2 qt5-graphicaleffects papirus-icon-theme pamixer network-manager-applet mpd cava
```
* Some dependancies for apps:
```
$sudo pacman -S jq python-requests python-gobject
```

* oh-my-zsh *"zsh themes"* to install run this command
```
$sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Installation

```
$git clone --separate-git-dir=$HOME/.dotfiles https://github.com/sentakuhm/.dotfiles.git tmpdotfiles
$rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
$rm -r tmpdotfiles
```

