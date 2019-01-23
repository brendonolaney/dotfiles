set -x OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES

set -x RUBYLIB "$HOME/clio/themis/lib"
set -x NODE_MODULES "$HOME/clio/themis/node_modules"

alias cdr='cd ~/clio/themis'

if status --is-interactive
  source (rbenv init - | psub)
  source (nodenv init - | psub)
end
