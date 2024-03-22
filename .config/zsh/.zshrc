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

# ++ Path to your oh-my-zsh installation ++
export ZSH="$ZDOTDIR/.oh-my-zsh"

# ++ Theme ++
ZSH_THEME="zeta"

# ++ Plugins ++
plugins=(git dotenv extract rake archlinux python sudo man themes last-working-dir history-substring-search fzf zoxide)

source $ZSH/oh-my-zsh.sh

# ++ For tlmgr CTAN latex package installer ++
alias tlmgr='/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode'

# ++ Sources & Aliases ++
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias v=nvim
alias ya=yazi
alias ls=eza
alias ve='sudoedit'
alias mkdir='mkdir -p'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'
alias reboot='systemctl reboot'
alias dmesg='sudo -v; sudo dmesg --color=always | less'
alias grep='grep --color'

# ++ For Canon Printer ++
alias cjob='captstatusui -P LBP6020 -e'

# Zoxide and fzf
# eval "$(zoxide init zsh --hook prompt)"
# source /usr/share/fzf/completion.zsh
# source /usr/share/fzf/key-bindings.zsh

# ++ For Dotfiles ++
config config status.showUntrackedFiles no
