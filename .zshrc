# ╔═╗╔═╗╔╗╔╔╦╗╔═╗╦╔═╦ ╦  ╔═╗╔═╗╔╗╔╔═╗╦╔═╗
# ╚═╗║╣ ║║║ ║ ╠═╣╠╩╗║ ║  ║  ║ ║║║║╠╣ ║║ ╦
# ╚═╝╚═╝╝╚╝ ╩ ╩ ╩╩ ╩╚═╝  ╚═╝╚═╝╝╚╝╚  ╩╚═╝
# ==================================================
# " Dotfiles: https://github.com/sentakuhm/.dotfiles
# " Email: madaramost@gmail.com
# ==================================================

# ++ Paths ++

# oh-my-zsh
export ZSH="/home/sentaku/.oh-my-zsh"
# Colored man pages
export PAGER="most"
# apps installed by cargo
export PATH=$PATH:.cargo/bin
# script PATH for vifm
export PATH=$PATH:./.config/vifm/scripts

# ++ End of paths ++
#
# ++ Theme ++
ZSH_THEME="eastwood"

# ++ Plugins ++ 
plugins=(git archlinux zeus nanoc python sudo vim-interaction vi-mode man rails tmux history)

# ++ Sources & Aliases ++
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias vifm='vifmrun'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
