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
alias cppcompile='c++ -std=c++11 -stdlib=libc++'

# Command Aliases
#
# Chezmoi - dotfile manager
alias chezmoi='dotfiles'

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

# Google SDK
export PATH=$PATH:/Users/amitk/google-cloud-sdk/bin

# Latest Ruby Version
export PATH=/usr/local/opt/ruby/bin:$PATH

# Go
export GOPATH=$HOME/Work/Repo/Private/Go-Workspace
export GOBIN=$GOPATH/bin/

# Java
# aliase commands to enable easy setting of JDK version
alias setJDK8='export JAVA_HOME=`/usr/libexec/java_home -v 1.8`'

# set to the default JDK
export JAVA_HOME=`/usr/libexec/java_home`


# Evaluate pyenv path
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Work specific bash files
source "${HOME}/dotfiles/env-profiles/wepay.sh"


