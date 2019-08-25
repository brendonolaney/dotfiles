#! /bin/bash

SCRIPTDIR=$PWD

mkdir -p "${HOME}/.config/nvim"

# Bash
ln -sf "${SCRIPTDIR}/bashrc" "${HOME}/.bashrc"
ln -sf "${SCRIPTDIR}/bash_profile" "${HOME}/.bash_profile"

# Tmux
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Vim
ln -sf "${SCRIPTDIR}/vimrc" "${HOME}/.config/nvim/init.vim"

# Tridactyl
ln -sf "${SCRIPTDIR}/tridactylrc" "${HOME}/.tridactylrc"

# Emacs
ln -sf "${SCRIPTDIR}/emacs.d" "${HOME}/.emacs.d"

