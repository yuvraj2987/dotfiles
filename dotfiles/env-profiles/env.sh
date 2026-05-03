#!/bin/zsh

# PATH
# export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/go/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/opt/homebrew/bin:$PATH"
export EDITOR='vim'


## Add GnuSed to MacOS
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH

# # ssh without changing known_hosts
# function ssh_login() { ssh -q -o UserKnownHostsFile=/dev/null -A "$1" }

# Aliases

## Command Aliases
#

# Kubernetes
alias k=kubectl
# Terraform
alias tf="terraform"
# Git
alias gs="git status -s "
alias ga="git add "
alias gp="git push "
alias gd="git diff "
alias gc="git commit "




# UV configuration
export PATH="$HOME/.local/bin:$PATH"


# Go env
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"


# # Ruby env
# eval "$(rbenv init - zsh)"


# Terraform env
export PATH="$HOME/.tfenv/bin:$PATH"

# Work specific bash files
source "${HOME}/dotfiles/env-profiles/work.sh"


