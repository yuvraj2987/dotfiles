#!/bin/zsh
#
#
# Chef Binaries
GEM_VERSION="2.5.0"
PATH=/opt/chefdk/embedded/bin:$PATH
PATH=$PATH:/Users/${USER}/.chefdk/gem/ruby/${GEM_VERSION}/bin

# Aliases
## SSH Agent
alias sshagent='eval "$(ssh-agent)"; ssh-add'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

