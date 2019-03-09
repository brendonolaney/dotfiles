set -x OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES

set -x RUBYLIB "$HOME/clio/themis/lib"
set -x NODE_MODULES "$HOME/clio/themis/node_modules"
set -x GOPATH "$HOME/clio/themis/Go"
set -x PATH "$GOPATH/bin:$PATH"

alias cdr='cd ~/clio/themis'
alias cdp='cd ~/clio/profiling'

if status --is-interactive
  source (nodenv init - | psub)
end
