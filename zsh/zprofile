#!/bin/zsh

export PATH="${HOME}/Source/bin:/usr/local/bin:/usr/local/sbin:${PATH}"
export EDITOR=nvim
export VISUAL=nvim
export ZSH="${HOME}/.oh-my-zsh"

if [[ -r "${HOME}/.zprofile.local" ]]
then
  source "${HOME}/.zprofile.local"
fi

if [[ -r "${HOME}/.clio_profile" ]]
then
  emulate sh -c "source $HOME/.clio_profile"
fi
