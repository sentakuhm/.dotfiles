# dotfiles

1. Before installing dotfiles make sure you installed

   ```cmd
   $ sudo pacman -S kitty zoxide eza fd ripgrep less fzf neovim tmux zsh \
   zsh-autosuggestions zsh-syntax-highlighting
   ```

2. For _"Hyprland"_ install
   ```cmd
   $ sudo pacman -S hyprland hyprlock hypridle hyprcursor hyprpaper \
   grim slurp dunst imv waybar nwg-look qt5ct qt6ct qt5-wayland \
   qt6-wayland pamixer mpd papirus-icon-theme \
   network-manager-applet wl-clipboard
   ```

   Additional deps from AUR
   ```cmd
   $ paru -S rofi-lbonn-wayland-git nvimpager hyprpicker-git wleave-git swww cava
   ```

   - Some dependencies for apps

     ```cmd
     sudo pacman -S jq python-requests python-gobject
     ```

4. oh-my-zsh _"zsh themes"_ to install run this command

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
