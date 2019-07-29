#!/bin/bash

export PATH="$HOME/Source/bin:/usr/local/bin:/usr/local/sbin:${PATH}"
export EDITOR=nvim
export VISUAL=nvim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias cp='cp -i'
alias l='ls -aF'
alias ll='ls -lahF'
alias mv='mv -i'
alias rm='rm -i'

eval "$(thefuck --alias)"

# For bash git prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  # shellcheck disable=SC2034
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  # shellcheck disable=SC2034
  GIT_PROMPT_ONLY_IN_REPO=1
  # shellcheck disable=SC1090
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# For fzf keybindings
# shellcheck disable=SC1090
[ -f ~/.fzf.bash ] && source "$HOME/.fzf.bash"

# Load local system options
# shellcheck disable=SC1090
[ -f "$HOME/.bashrc.local" ] && source "$HOME/.bashrc.local"

