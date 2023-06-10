## dotfiles

### Notes
* Before installing dotfiles make sure you have installed:<br>
`$sudo pacman -S alacritty nvim nvimpager tmux zsh zsh-autosuggestions zsh-syntax-highlighting`

* For *"Hyprland"* install:<br>
```
$yay -S  hyprland-nvidia wofi wlroots-git waybar-hyprland-git wl-clipboard nwg-look hyprpicker-git hyprpaper grim slurp dunst wlogout viewnior ueberzugpp thunar swww swaylock-effects-git swaybg swappy sddm-theme-tokyo-night sddm-git qt5ct qt6ct qt5-wayland qt6-wayland qt5-quickcontrols2 qt5-graphicaleffects papirus-icon-theme pamixer network-manager-applet jq mpd vifm cava pipes-rs-git
```

* oh-my-zsh *"zsh themes"* to install run this command:<br>
```
$sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Installation

```
$git clone --separate-git-dir=$HOME/.dotfiles https://github.com/sentakuhm/.dotfiles.git tmpdotfiles
$rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
$rm -r tmpdotfiles
```

