#!/bin/zsh

# Add my user bins and homebrew to the path.
export PATH="${HOME}/Source/bin:/usr/local/bin:/usr/local/sbin:${PATH}"

# NVIM is the editor of choice
export EDITOR='emacs -nw'
export VISUAL='emacs -nw'

if [[ -r "${HOME}/.zsh/zshenv.local" ]]
then
  source "${HOME}/.zsh/zshenv.local"
fi
