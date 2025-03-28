if [ "$TMUX" = "" ]; then tmux; fi

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hanle/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/hanle/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hanle/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/hanle/google-cloud-sdk/completion.zsh.inc'; fi


export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(starship init zsh)"
