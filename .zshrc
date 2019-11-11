# ++ Paths ++

# oh-my-zsh
export ZSH="/home/sentaku/.oh-my-zsh"
# Colored man pages
export PAGER="most"
# apps installed by cargo
export PATH=$PATH:.cargo/bin

# ++ End of paths ++
#
# ++ Theme ++
ZSH_THEME="eastwood"

# ++ Plugins ++ 
plugins=(git arcanist iterm2 archlinux arcanist zeus tmuxinator nanoc python sudo vim-interaction vi-mode man rails tmux vundle history zsh-autosuggestions zsh-syntax-highlighting)

# ++ Sources & Stuffs ++
source $ZSH/oh-my-zsh.sh

# aliases
alias config='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
