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

if test -e ~/.config/fish/config.local.fish
  source ~/.config/fish/config.local.fish
end
