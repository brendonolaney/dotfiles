#!/bin/zsh

PATH="/usr/local/bin:/usr/local/sbin:${PATH}"  # Homebrew bins
PATH="${HOME}/src/bin:${PATH}"  # User bins
export PATH

export EDITOR='nvim'
export VISUAL='nvim'

if [[ -r "${HOME}/.zsh/zshenv.local" ]]
then
  source "${HOME}/.zsh/zshenv.local"  # Machine specific environment
fi

if [[ -r "${HOME}/.nix-profile/etc/profile.d/nix.sh" ]]
then
  # Nix package manager
  source "${HOME}/.nix-profile/etc/profile.d/nix.sh"
fi

if [[ -r "${HOME}/.nix_profile/etc/profile.d/hm-session-vars.sh" ]]
then
  # Home manager
  source "${HOME}/.nix_profile/etc/profile.d/hm-session-vars.sh" 
fi
