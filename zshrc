#!/bin/zsh

export PATH="${HOME}/Source/bin:/usr/local/bin:/usr/local/sbin:${PATH}"
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

set -o emacs

if [[ -r "/usr/local/opt/zsh-git-prompt/zshrc.sh" ]]
then
  source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
  PROMPT='%B%m%~%b$(git_super_status) %# '
else
  echo "zsh-git-prompt is not installed."
  echo "try \`brew install zsh-git-prompt\`"
fi

if [[ -r "${HOME}/.fzf.zsh" ]]
then
  source ~/.fzf.zsh
else
  echo "FZF is not installed for zsh."
  echo "try \`brew install zsh && /usr/local/opt/fzf/install\`"
fi

if [[ -r "/usr/local/share/zsh-completions" ]]
then
  fpath=(/usr/local/share/zsh-completions $fpath)
else
  echo "zsh-completions is not installed."
  echo "try \`brew install zsh-completions\`"
fi

if command -v thefuck>/dev/null
then
  eval "$(thefuck --alias)"
else
  echo "thefuck is not installed."
  echo "try \`brew install thefuck\`"
fi

if command -v ddate>/dev/null
then
  ddate
else
  echo "thefuck is not installed."
  echo "try \`brew install thefuck\`"
fi

if [[ -r "${HOME}/.zshrc.local" ]]
then
  source "${HOME}/.zshrc.local"
fi
