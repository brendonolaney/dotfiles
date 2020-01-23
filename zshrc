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

# Emacs keys still better for interactive terminals imo
set -o emacs

# Use pure prompt because it's good and not bad
if [[ -r "${HOME}/.zsh/pure" ]]
then
  fpath+=("${HOME}/.zsh/pure")
  autoload -U promptinit; promptinit
  prompt pure
else
  echo "Pure prompt is not installed for zsh."
  echo "try \`git clone https://github.com/sindresorhus/pure.git \"\$HOME/.zsh/pure\"\`"
fi

# Set and use FZF file and history finding if available.
if [[ -r "${HOME}/.fzf.zsh" ]]
then
  source ~/.fzf.zsh
else
  echo "FZF is not installed for zsh."
  echo "try \`brew install zsh && /usr/local/opt/fzf/install\`"
fi

# Source computer specific script.
if [[ -r "${HOME}/.zsh/zshrc.local" ]]
then
  source "${HOME}/.zsh/zshrc.local"
fi
