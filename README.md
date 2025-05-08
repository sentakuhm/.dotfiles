# dotfiles

1. Before installing dotfiles make sure you installed

   ```cmd
   sudo pacman -S kitty zoxide eza fd ripgrep less fzf bat htop btop neovim tmux zsh zsh-autosuggestions zsh-syntax-highlighting jq python-requests python-gobject rsync mission-center wf-recorder
   ```

2. For _"Hyprland"_ install

   ```cmd
   sudo pacman -S hyprland hyprlock hypridle hyprcursor hyprpaper hyprpicker swaync hyprpolkitagent grim slurp swww imv waybar rofi-wayland nwg-look pavucontrol qt5-wayland qt6-wayland pamixer mpd papirus-icon-theme wl-clipboard network-manager-applet
   ```

   Additional deps from AUR

   ```cmd
   paru -S oh-my-zsh-git qt6ct-kde clipse nvimpager wlogout-git
   ```

4. Tmux plugin manager

   ```cmd
   git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
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

### Run Hyprland Services

```cmd
systemctl --user enable --now hypridle.service && systemctl --user enable --now hyprpolkitagent.service
```
