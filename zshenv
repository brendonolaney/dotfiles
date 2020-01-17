#!/bin/zsh

export PATH="${HOME}/Source/bin:/usr/local/bin:/usr/local/sbin:${PATH}"
export EDITOR=nvim
export VISUAL=nvim
export ZSH="${HOME}/.oh-my-zsh"

if [[ -r "${HOME}/.zsh/zprofile.local" ]]
then
  source "${HOME}/.zsh/zprofile.local"
fi
