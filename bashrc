#!/bin/sh

export PATH="$HOME/Source/bin:/usr/local/bin:/usr/local/sbin:${PATH}"
export EDITOR=nvim
export VISUAL=nvim
alias v='nvim'
alias vim='nvim'

alias cp='cp -i'
alias l='ls -aF'
alias ll='ls -lahF'
alias mv='mv -i'
alias rm='rm -i'

# Clio specific bits in here.
export RUBYLIB="$HOME/clio/themis/lib"
export NODE_MODULES="$HOME/clio/themis/node_modules"

export DEV_ROOT_PATH="$HOME/clio/themis"

alias cdr='cd ~/clio/themis'

# shellcheck disable=SC1091
. /Users/brendonolaney/.clio_profile

