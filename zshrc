#########
# OhMyZSH
#########
export PATH=$HOME/Dev/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bureau"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

########
# Custom
########
# Aliases
alias sync='syncdev Documents phone all && syncdev Dev phone all'

# Node/NPM
export NVM_DIR="$HOME/.nvm"
export PATH=~/.npm-global/bin:$PATH
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Reference?
#ssh tmux connect
#if [[ -z "$TMUX"  ]] && [ "$SSH_CONNECTION" != "" ]; then
#  tmux attach-session -t dev || tmux new-session -s dev
#fi


##################
# Google Cloud SDK
##################
# TODO change dir to .google-cloud-sdk, changing this line and the autogen script
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/data/data/com.termux/files/home/google-cloud-sdk/path.zsh.inc' ]; then . '/data/data/com.termux/files/home/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/data/data/com.termux/files/home/google-cloud-sdk/completion.zsh.inc' ]; then . '/data/data/com.termux/files/home/google-cloud-sdk/completion.zsh.inc'; fi

sshd
