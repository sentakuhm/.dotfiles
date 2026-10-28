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
ZSH=/usr/share/oh-my-zsh/

# ++ Theme ++
ZSH_THEME="zeta"

# ++ Plugins ++
plugins=(git dotenv extract rake archlinux sudo man themes last-working-dir history-substring-search fzf zoxide)

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.config/zsh/oh-my-zsh/custom/

# ++ For tlmgr CTAN latex package installer ++
#alias tlmgr='/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode'
alias tlinstall='sudo /usr/local/texlive/2026/bin/x86_64-linux/tlmgr install'
alias tlup='sudo /usr/local/texlive/2026/bin/x86_64-linux/tlmgr update --all'
alias tllist='sudo /usr/local/texlive/2026/bin/x86_64-linux/tlmgr update --list'

# ++ Sources & Aliases ++
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias v=nvim
alias yy=yazi
alias cat=bat
alias ff='clear && fastfetch'
alias ve='sudoedit'
alias mkdir='mkdir -p'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'
alias reboot='systemctl reboot'
alias dmesg='sudo -v; sudo dmesg --color=always | less'
alias grep='grep --color'
alias umugame='mangohud gamemoderun umu-run --config ~/.config/umu/config.toml'
#++ Local AI
#Fast Answer
alias llfast='llama-server -m "/Games/Models/Qwen/Qwen3.8-27B-GSQ-RCO-IQ3_XXS-mtp/Qwen3.8-27B-GSQ-RCO-IQ3_XXS-mtp.gguf" --mmproj "/Games/Models/Qwen/Qwen3.8-27B-GSQ-RCO-IQ3_XXS-mtp/mmproj-Qwen3.8-27B-BF16.gguf" -a "Qwen3.8 27B GSQ-RCO IQ3_XXS" -ngl 999 -fa on --jinja -c 41523 -b 512 -ub 512 -t 6 -tb 6 -np 1 --no-mmproj-offload --spec-type draft-mtp --spec-draft-n-max 2 --spec-draft-p-min 0.75 -ctk q5_1 -ctv q5_1 -ctkd q5_1 -ctvd q5_1 --temp 1.0 --top-p 0.95 --top-k 20 --min-p 0.0 --presence-penalty 0.0 --repeat-penalty 1.0'
# Medium Project
alias llprojm='llama-server -m "/Games/Models/Qwen/Qwen3.8-27B-GSQ-RCO-IQ3_XXS-mtp/Qwen3.8-27B-GSQ-RCO-IQ3_XXS-mtp.gguf" --mmproj "/Games/Models/Qwen/Qwen3.8-27B-GSQ-RCO-IQ3_XXS-mtp/mmproj-Qwen3.8-27B-BF16.gguf" -a "Qwen3.8 27B GSQ-RCO IQ3_XXS" -ngl 999 -fa on --jinja -c 65410 -b 512 -ub 512 -t 6 -tb 6 -np 1 --no-mmproj-offload --spec-type draft-mtp --spec-draft-n-max 2 --spec-draft-p-min 0.75 -ctk q5_1 -ctv q5_1 -ctkd q5_1 -ctvd q5_1 --temp 1.0 --top-p 0.95 --top-k 20 --min-p 0.0 --presence-penalty 0.0 --repeat-penalty 1.0'
# Big Project
alias llprojb='llama-server -m "/Games/Models/Qwen/Qwen3.8-27B-GSQ-RCO-IQ3_XXS-mtp/Qwen3.8-27B-GSQ-RCO-IQ3_XXS-mtp.gguf" --mmproj "/Games/Models/Qwen/Qwen3.8-27B-GSQ-RCO-IQ3_XXS-mtp/mmproj-Qwen3.8-27B-BF16.gguf" -a "Qwen3.8 27B GSQ-RCO IQ3_XXS" -ngl 999 -fa on --jinja -c 131312 -b 1024 -ub 1024 -t 6 -tb 6 -np 1 --no-mmproj-offload --spec-type draft-mtp --spec-draft-n-max 2 --spec-draft-p-min 0.75 -ctk q5_1 -ctv q5_1 -ctkd q5_1 -ctvd q5_1 --temp 1.0 --top-p 0.95 --top-k 20 --min-p 0.0 --presence-penalty 0.0 --repeat-penalty 1.0'
# ++ For Canon Printer ++
#alias cjob='captstatusui -P LBP6020 -e'

# Zoxide and fzf
# eval "$(zoxide init zsh --hook prompt)"
# source /usr/share/fzf/completion.zsh
# source /usr/share/fzf/key-bindings.zsh

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
alias ls='eza --colour=always --git --no-filesize --icons=always --no-time --no-user --no-permissions --group-directories-first' # you can add --long

# ++ For Dotfiles ++
config config status.showUntrackedFiles no
