function fish_greeting
  if type -q ddate
    ddate
  else
    printf '%s\n' 'I sense a disturbing lack of faith...'
  end
end

set -x PATH $HOME/Source/bin /usr/local/bin /usr/local/sbin {$PATH}

set -x EDITOR nvim
set -x VISUAL nvim
alias vi=nvim
alias vim=nvim

alias cp='cp -i'
alias l='ls -aF'
alias ll='ls -lahF'
alias mv='mv -i'
alias rm='rm -i'

# CLIO specific stuff
set -x OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES

set -x RUBYLIB "$HOME/clio/themis/lib"
set -x NODE_MODULES "$HOME/clio/themis/node_modules"

set -x DEV_ROOT_PATH "$HOME/clio/themis"

alias cdr='cd ~/clio/themis'

if status --is-interactive
  source (rbenv init - | psub)
  source (nodenv init - | psub)
end

