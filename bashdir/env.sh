#!/bin/zsh

# PATH
export PATH="/usr/local/bin:/usr/local/go/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR='vim'

## Virtual Environment
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/projects
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

#ssh without changing known_hosts
function ssh_login() { ssh -q -o UserKnownHostsFile=/dev/null -A "$1" }

# Aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'

# Command Aliases
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

# Pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Google SDK
export PATH=$PATH:/Users/amitk/google-cloud-sdk/bin

# Latest Ruby Version
export PATH=/usr/local/opt/ruby/bin:$PATH

# Personal Projetcs
alias sw-private="gcloud config configurations activate personal-cloud"
# Work specific bash files
source "${HOME}/wepay.sh"


# Go
export GOPATH=$HOME/Work/Repo/Private/Go-Workspace
export GOBIN=$GOPATH/bin/
