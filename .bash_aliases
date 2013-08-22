# Shortcuts
alias ..="cd .."
alias ~="cd ~"
alias gh="cd ~/projects/github"
alias k7="cd ~/projects/cossette"

# Directory listing 
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls="ls --color=auto"

    alias grep="grep --color=auto"
    alias fgrep="fgrep --color=auto"
    alias egrep="egrep --color=auto"
fi

alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

# Vi
alias v="vim"
alias vi="vim"

# Bash
alias br="vi ~/.bashrc && source ~/.bashrc"
alias ba="vi ~/.bash_aliases && source ~/.bash_aliases"
alias bp="vi ~/.bash_profile && source ~/.bash_profile"

# Utilities
alias free="free -m"

# Package manager
alias update="sudo aptitude update"
alias install="sudo aptitude install"
alias upgrade="sudo aptitude safe-upgrade"
alias remove="sudo aptitude remove"

# Apache
alias ars="sudo /etc/init.d/apache2 restart"
alias arl="sudo /etc/init.d/apache2 reload"

# Git
alias gpl="git pull" 
alias gps="git push" 
alias ga="git add"
alias gs="git status"
alias gc="git commit"
alias gca="git commit -a"
alias gd="git diff"
alias gb="git branch"
alias gr="git reset"

# SSH
alias dev="ssh dev"

# Gems
alias ssw="sass --watch global.css:global.scss"
