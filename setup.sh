#! /bin/bash

SCRIPTDIR=$PWD

# Bash
ln -sf "${SCRIPTDIR}/bashrc" "${HOME}/.bashrc"
ln -sf "${SCRIPTDIR}/bash_profile" "${HOME}/.bash_profile"

# Tmux
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Vim
VIMDIR="${HOME}/.config/nvim"
mkdir -p "${VIMDIR}"
ln -sf "${SCRIPTDIR}/nvim" "${VIMDIR}/"

# Tridactyl
ln -sf "${SCRIPTDIR}/tridactylrc" "${HOME}/.tridactylrc"

# Emacs
ln -sf "${SCRIPTDIR}/emacs.d" "${HOME}/.emacs.d"

