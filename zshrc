# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/amitk/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

HYPHEN_INSENSITIVE="true"
source $ZSH/oh-my-zsh.sh
# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vi'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

plugins=(git colored-man colorize github jira vagrant brew osx zsh-syntax-highlighting)

source ~/env.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/amitk/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/amitk/google-cloud-sdk/path.zsh.inc'; fi
