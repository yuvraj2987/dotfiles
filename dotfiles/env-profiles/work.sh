#!/bin/zsh


# Go
export GOPATH=$HOME/work/rbx/go
export GOBIN=$GOPATH/bin/

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Hashi tools
export PATH="$PATH:$HOME/work/rbx/tools"



