# Load Antigen
source ~/src/antigen/bin/antigen.zsh
# Load Antigen configurations
antigen init ~/.antigenrc

# Aliases
alias ping='ping -c4'
alias vim='emacsclient -t'
alias em='emacsclient -t'
alias ec='emacsclient -c'
alias fullhostname='host -TtA $(hostname -s)'
alias ls='ls -lahG'

# Options
setopt inc_append_history
setopt share_history

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Mac specific
alias ls="ls -lahG"

eval "$(pyenv init -)"
