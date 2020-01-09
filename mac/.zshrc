# Path to your oh-my-zsh installation.
export ZSH="/Users/samuel/.oh-my-zsh"

ZSH_THEME="sorin"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# aliases
alias gitclean="git branch | grep -v 'master' | xargs git branch -D"
alias gitplease="git push --force-with-lease"

# asdf
. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
