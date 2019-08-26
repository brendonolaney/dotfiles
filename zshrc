#!/bin/zsh

# Save a lot of history and don't wait for the session to end before writing.
HISTFILE=~/.zhistory
HISTSIZE=50000
SAVEHIST=50000
setopt appendhistory

# Add my user bins and homebrew to the path.
export PATH="${HOME}/Source/bin:/usr/local/bin:/usr/local/sbin:${PATH}"

# Ensure all commands use nvim as the editor.
export EDITOR=nvim
export VISUAL=nvim

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

# I prefer emacs to vim for single line editing.
set -o emacs

# Generally I don't like gigantic frameworks like oh-my-zsh, but getting a git
# prompt that isn't unreasonably slow is hard, and it comes with one
if [[ -d "${HOME}/.oh-my-zsh" ]]
then
  ZSH_THEME="simple"
  plugins=(gitfast)
  export ZSH="/Users/brendonolaney/.oh-my-zsh"
  COMPLETION_WAITING_DOTS="true"
  DISABLE_UNTRACKED_FILES_DIRTY="true"
  source $ZSH/oh-my-zsh.sh
else
  echo "oh-my-zsh is not installed"
fi

# Set and use FZF file and history finding if available.
if [[ -r "${HOME}/.fzf.zsh" ]]
then
  source ~/.fzf.zsh
else
  echo "FZF is not installed for zsh."
  echo "try \`brew install zsh && /usr/local/opt/fzf/install\`"
fi

# Activate command correction command if available.
# Might be able to use oh-my-zsh's command correction thing too.
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
if [[ -r "${HOME}/.zshrc.local" ]]
then
  source "${HOME}/.zshrc.local"
fi

