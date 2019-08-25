#! /bin/bash

SCRIPTDIR=$PWD

# Bash
ln -sf "${SCRIPTDIR}/bashrc" "${HOME}/.bashrc"
ln -sf "${SCRIPTDIR}/bash_profile" "${HOME}/.bash_profile"

# Tmux
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Vim
mkdir -p "${HOME}/.config"
ln -sf "${SCRIPTDIR}/nvim" "${HOME}/.config/nvim"

# Tridactyl
ln -sf "${SCRIPTDIR}/tridactylrc" "${HOME}/.tridactylrc"

# Emacs
ln -sf "${SCRIPTDIR}/emacs.d" "${HOME}/.emacs.d"
