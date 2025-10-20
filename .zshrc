export NVM_DIR=/Users/gabrielromao/.nvm
  [ -s /opt/homebrew/opt/nvm/nvm.sh ] && \. /opt/homebrew/opt/nvm/nvm.sh  # This loads nvm
  [ -s /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm ] && \. /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm  # This loads nvm bash_completion

source ~/.bash_aliases

. "$HOME/.local/bin/env"

eval "$(pyenv init --path)"

