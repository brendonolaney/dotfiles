#! /bin/bash

SCRIPTDIR=$PWD
mkdir -p "${HOME}/.config"

# ZSH
ZSHDIR="${HOME}/.zsh"
ln -sf "${SCRIPTDIR}/zshenv" "${HOME}/.zshenv"
ln -sf "${SCRIPTDIR}/zshrc" "${HOME}/.zshrc"
rm -rf "${ZSHDIR}"
ln -sf "${SCRIPTDIR}/zsh" "${ZSHDIR}"

# Vim
VIMDIR="${HOME}/.config/nvim"
rm -rf "${VIMDIR}"
ln -sf "${SCRIPTDIR}/nvim" "${VIMDIR}"

# Doom
DOOMDIR="${HOME}/.doom.d"
rm -rf "${DOOMDIR}"
ln -sf "${SCRIPTDIR}/doom.goodsprings.d" "${DOOMDIR}"

# Tmux
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Tridactyl
ln -sf "${SCRIPTDIR}/tridactyl" "${HOME}/.config/tridactyl"
