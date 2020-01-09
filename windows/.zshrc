# SHARED ZSH CONFIG

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.local/bin:$PATH"

# oh my zsh
export ZSH=/home/samuel/.oh-my-zsh
ZSH_THEME="sorin"
plugins=(git ssh-agent zsh-autosuggestions yarn wd z)
source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# custom aliases
alias repos="cd /mnt/d/repos"
alias git-clean="git branch | grep -v 'master' | xargs git branch -D"
alias git-please="git push --force-with-lease"

# docker
export DOCKER_HOST=tcp://0.0.0.0:2375

# nvm
export NVM_DIR="$HOME/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# nuget
alias nuget="mono /usr/local/bin/nuget.exe"
