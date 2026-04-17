# 📂 Dotfiles Repository

This repository contains my customized configuration files (dotfiles) for various applications and system components on Arch Linux systems using Hyprland. These configurations allow for a highly tailored and efficient desktop experience.

***
## 🚀 Prerequisites

Before installation, ensure your base system is up to date, and you have the necessary package managers (`pacman` and `paru`) installed.

### 1. Core System Dependencies

These packages provide fundamental tools required for the dotfiles (e.g., terminal emulators, utilities).

```bash
# Install core dependencies using pacman
sudo pacman -S kitty zoxide eza fd ripgrep less fzf bat htop btop neovim tmux zsh zsh-autosuggestions zsh-syntax-highlighting jq python-requests python-gobject rsync mission-center wf-recorder udiskie udisks2 uwsm
```

### 2. Hyprland Specific Dependencies

If you are using the Hyprland Wayland compositor, these packages provide essential visual and functional components.

```bash
# Install Hyprland and related utilities via pacman
sudo pacman -S hyprland hyprlock hypridle hyprcursor hyprpaper hyprpicker swaync hyprpolkitagent grim slurp swww imv waybar rofi-wayland nwg-look pavucontrol qt5-wayland qt6-wayland qt6ct pamixer mpd papirus-icon-theme wl-clipboard network-manager-applet
```

### 3. AUR Additions (Recommended)

These additional dependencies are sourced from the Arch User Repository (AUR) using `paru`.

```bash
# Install recommended packages from AUR
paru -S oh-my-zsh-git qt6ct-kde clipse nvimpager wlogout-git
```

### ⚙️ Optional: Tmux Plugin Manager Installation

The TMUX Plugin Manager (`tpm`) automates the installation and management of plugins for Tmux.

1. Clone the plugin manager into the appropriate directory:
   ```bash
   git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
   ```

***
## ✨ Installation Guide

This process copies all configuration files from this repository into your home directory (`~`). **Warning:** This overwrites existing dotfiles, so ensure you have backups of any crucial personal configs.

### Step 1: Clone the Repository
We clone the entire dotfiles repository to a temporary location.

```bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/sentakuhm/.dotfiles.git tmpdotfiles
```

### Step 2: Sync Configurations
The `rsync` command efficiently and recursively copies all files from the temporary directory into your home directory (`$HOME`). We use `--exclude '.git'` to prevent committing history into our config files, which is unnecessary and messy.

```bash
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
```

### Step 3: Clean Up
Remove the temporary working directory to keep your system clean.

```bash
rm -rf tmpdotfiles
```

### ▶️ Final Step: Enable Services (Hyprland Users Only)

After copying files, you must manually enable and start any systemd services that need to run as a user session service (like power management or screen blanking).

```bash
systemctl --user enable --now hypridle.service && systemctl --user enable --now hyprpolkitagent.service
```