#!/bin/zsh

# Save a lot of history and don't wait for the session to end before writing.
HISTFILE=~/.zhistory
HISTSIZE=50000
SAVEHIST=50000
setopt appendhistory

# Useful aliases.
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias cp='cp -i'  # Prompt for overwrite.
alias l='ls -aF'  # Display hidden files.
alias ll='ls -lahF'  # List display, with symlinks.
alias mv='mv -i'  # Prompt for overwrite.
alias rm='rm -i'  # Prompt for safety.

# Common directory shortcuts.
alias cds='cd ~/Source/dotfiles'

# Try VI again
set -o vi

# Set and use FZF file and history finding if available.
if [[ -r "${HOME}/.fzf.zsh" ]]
then
  source ~/.fzf.zsh
else
  echo "FZF is not installed for zsh."
  echo "try \`brew install zsh && /usr/local/opt/fzf/install\`"
fi

# Activate command correction command if available.
if command -v thefuck>/dev/null
then
  eval "$(thefuck --alias)"
else
  echo "thefuck is not installed."
  echo "try \`brew install thefuck\`"
fi

# Hail Sobek.
if command -v ddate>/dev/null
then
  ddate
fi

# Source computer specific script.
if [[ -r "${HOME}/.zsh/zshrc.local" ]]
then
  source "${HOME}/.zsh/zshrc.local"
fi