export ZSH=/home/samuel/.oh-my-zsh
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.local/bin:$PATH"
export NVM_DIR="$HOME/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# see https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="sorin"
COMPLETION_WAITING_DOTS="true"

# plugins
plugins=(git ssh-agent chucknorris jsontools zsh-autosuggestions yarn wd z)

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# custom aliases
alias repos="cd /mnt/d/repos"
alias gitclean="git branch | grep -v 'master' | xargs git branch -D"

# docker
export DOCKER_HOST=tcp://0.0.0.0:2375
