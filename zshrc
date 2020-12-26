# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
    brew
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    enhancd
)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# VIM as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Shortcuts
alias ..="cd .."
alias ~="cd ~"

# Directory listing
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls="ls --color=auto"

    alias grep="grep --color=auto"
fi

# Vi
alias vi="vim"

# ZSH
alias zr="vi ~/.zshrc && source ~/.zshrc"
