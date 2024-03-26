# dotfiles

1. Before installing dotfiles make sure you installed

   ```cmd
   $ sudo pacman -S kitty zoxide eza fd ripgrep less fzf neovim tmux zsh zsh-autosuggestions \
   zsh-syntax-highlighting
   ```

2. For _"Hyprland"_ install

   ```cmd
   $ paru -S  hyprland-git hyprlock-git hypridle-git rofi-lbonn-wayland-git wl-clipboard \
   nvimpager waybar nwg-look hyprpicker-git grim slurp dunst wlogout imv swww \
   qt5ct qt6ct qt5-wayland qt6-wayland qt5-quickcontrols2 \
   qt5-graphicaleffects papirus-icon-theme pamixer \
   network-manager-applet mpd cava
   ```

   - Some dependencies for apps

     ```cmd
     sh sudo pacman -S jq python-requests python-gobject
     ```

3. oh-my-zsh _"zsh themes"_ to install run this command

   ```cmd
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
   ```

## Installation

```cmd
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/sentakuhm/.dotfiles.git tmpdotfiles
```

```cmd
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
```

```cmd
rm -r tmpdotfiles
```
