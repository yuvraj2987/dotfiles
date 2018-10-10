#!/bin/zsh

# PATH
export PATH="/usr/local/bin:/usr/local/go/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR='vim'
# export PYTHONPATH=$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"

# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects

#ssh without changing known_hosts
function ssh_login() { ssh -q -o UserKnownHostsFile=/dev/null -A "$1" }

# Aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'

# Command Aliases

# Terraform
alias tf="terraform"
# Git
alias gs="git status -s "
alias ga="git add "
alias gp="git push "
# Wetools
export PATH=$PATH:/Users/amitk/we-tools-cli/bin

# Pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
source "${HOME}/wepay.sh"
