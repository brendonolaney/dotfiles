#!/bin/sh

export PATH="$HOME/Source/bin:/usr/local/bin:/usr/local/sbin:${PATH}"
export EDITOR=nvim
export VISUAL=nvim
alias v='nvim'
alias vim='nvim'

alias cp='cp -i'
alias l='ls -aF'
alias ll='ls -lahF'
alias mv='mv -i'
alias rm='rm -i'

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

if [ -f "$HOME/.bashrc.local" ]; then
  # shellcheck disable=SC1090
  . "$HOME/.bashrc.local"
fi

