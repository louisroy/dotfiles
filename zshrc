# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_DISABLE_COMPFIX=true

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    brew
    ubuntu
    docker
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

# Platform-specific items
if grep -q microsoft /proc/version; then
  # Ubuntu on Windows
  if ! which keychain > /dev/null; then
    sudo apt install keychain
  fi
  /usr/bin/keychain --nogui $HOME/.ssh/korem
  source $HOME/.keychain/L1W-P0047-sh
elif [ "$(uname)" == "Darwin" ]; then
  # MacOS
else
  # Native Linux
  echo "native Linux"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
