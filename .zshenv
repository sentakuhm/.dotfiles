#                  __ _       
#  ___ ___  _ __  / _(_) __ _ 
# / __/ _ \| '_ \| |_| |/ _` |
#| (_| (_) | | | |  _| | (_| |
# \___\___/|_| |_|_| |_|\__, |
#                       |___/ 
# ==================================================
# " Dotfiles: https://github.com/sentakuhm/.dotfiles
# " Email: sentakuhm@gmail.com
# ==================================================

# default apps
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export PAGER="nvimpager"
export MOZ_ENABLE_WAYLAND=1 # Fix Blurry Firefox on HiDPI + Wayland
typeset -U path PATH
path=(~/.local/bin $path)
export PATH
# cleaning up home folder
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
alias wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export LD_PRELOAD=/usr/lib/libgamemode.so
export XCURSOR_THEME=/usr/share/icons/Bibata-Modern-Classic
export XCURSOR_SIZE=24 
export W3M_DIR="$XDG_STATE_HOME/w3m"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var
export TEXMFHOME=$XDG_DATA_HOME/texmf
export TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export LESSHISTFILE="-"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export N_PREFIX="$HOME/.local/bin/n"
export ZDOTDIR="$HOME/.config/zsh"
