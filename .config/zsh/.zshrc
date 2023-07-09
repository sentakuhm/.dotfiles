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
plugins=(git dotenv extract rake archlinux python sudo man themes last-working-dir history-substring-search)

source $ZSH/oh-my-zsh.sh

# ++ For tlmgr CTAN latex package installer ++
alias tlmgr='/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode'

# ++ Arabic support | launch bicon if not launched ++
if ! [[ "$(ps -p $(ps -p $(echo $$) -o ppid=) -o comm=)" =~ 'bicon'* ]]; then
  bicon.bin
fi

# ++ Sources & Aliases ++
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vib='nvidia-settings -a "DigitalVibrance=${1:-1023}"' #full
alias vibmid='nvidia-settings -a "DigitalVibrance=${1:-700}"' #Custom
alias novib='nvidia-settings -a "DigitalVibrance=${1:-0}"'
alias v=nvim
alias ve='sudoedit'
# ++ For Canon Printer ++
alias cjob='captstatusui -P LBP6020 -e'

config config status.showUntrackedFiles no
