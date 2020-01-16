#! /bin/bash

SCRIPTDIR=$PWD

# ZSH
ZSHDIR=zsh
ln -sf "${SCRIPTDIR}/${ZSHDIR}/zprofile" "${HOME}/.zprofile"
ln -sf "${SCRIPTDIR}/${ZSHDIR}/zshrc" "${HOME}/.zshrc"

# Tmux
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Vim
mkdir -p "${HOME}/.config"
ln -sf "${SCRIPTDIR}/nvim" "${HOME}/.config/nvim"

# Emacs
ln -sf "${SCRIPTDIR}/emacs.d" "${HOME}/.emacs.d"
