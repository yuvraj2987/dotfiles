#!/bin/zsh

# PATH
# export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/go/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/opt/homebrew/bin:$PATH"
export EDITOR='vim'

## Virtual Environment
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

## Add GnuSed to MacOS
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH

#ssh without changing known_hosts
function ssh_login() { ssh -q -o UserKnownHostsFile=/dev/null -A "$1" }

# Aliases

## Command Aliases
#
# Cheat Sheet Service
function cheatsh() { curl cht.sh/"$1"}

# Terraform
alias tf="terraform"
# Git
alias gs="git status -s "
alias ga="git add "
alias gp="git push "
alias gd="git diff "
alias gc="git commit "
# Wetools
export PATH=$PATH:/Users/amitk/we-tools-cli/bin

# # Pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"


# Evaluate pyenv path
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# Go env
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# Go
export GOPATH=$HOME/work/repo/rbx/go
export GOBIN=$GOPATH/bin/
# Work specific bash files
# source "${HOME}/dotfiles/env-profiles/wepay.sh"


