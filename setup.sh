#! /bin/bash

SCRIPTDIR=$PWD

# Bash
ln -sf "${SCRIPTDIR}/bashrc" "${HOME}/.bashrc"

# Zsh
ln -sf "${SCRIPTDIR}/zshrc" "${HOME}/.zshrc"

# Tmux
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Vim
mkdir -p "${HOME}/.config"
ln -sf "${SCRIPTDIR}/nvim" "${HOME}/.config/nvim"

# Tridactyl
ln -sf "${SCRIPTDIR}/tridactyl" "${HOME}/.config/tridactyl"

# Emacs
ln -sf "${SCRIPTDIR}/emacs.d" "${HOME}/.emacs.d"
