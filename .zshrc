# Save a lot of history and don't wait for the session to end before writing.
HISTFILE=~/.zhistory
HISTSIZE=50000
SAVEHIST=50000
setopt appendhistory

# Useful aliases.
alias vim='nvim'

alias cp='cp -i'  # Prompt for overwrite.
alias l='ls -aF'  # Display hidden files.
alias ll='ls -lahF'  # List display, with symlinks.
alias mv='mv -i'  # Prompt for overwrite.
alias rm='rm -i'  # Prompt for safety.
alias config='/usr/bin/git --git-dir=$HOME/src/dotfiles/ --work-tree=$HOME'  # Access dotfiles

set -o emacs

# Use pure prompt
if [[ -r "${HOME}/.zsh/pure" ]]
then
  fpath+=("${HOME}/.zsh/pure")
  autoload -U promptinit; promptinit
  prompt pure
fi

# Set and use FZF file and history finding if available.
if [[ -r "${HOME}/.fzf.zsh" ]]
then
  source ~/.fzf.zsh
fi

