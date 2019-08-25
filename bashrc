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

alias cds='cd ~/Source/dotfiles'

# Source bash git prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  # shellcheck disable=SC2034
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  # shellcheck disable=SC2034
  GIT_PROMPT_ONLY_IN_REPO=0
  # shellcheck disable=SC1090
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Source bash completion
if [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]]
then
  source "/usr/local/etc/profile.d/bash_completion.sh"
fi

# Source fzf keybindings
if [ -f ~/.fzf.bash ]
then
  # shellcheck disable=SC1090
  source "$HOME/.fzf.bash"
fi

# Source thefuck
command -v thefuck>/dev/null && eval "$(thefuck --alias)"

# MOTD
command -v ddate>/dev/null && ddate 

# Load local system options
if [ -f "$HOME/.bashrc.local" ]
then
  # shellcheck disable=SC1090
  source "$HOME/.bashrc.local"
fi
