#! /bin/bash

SCRIPTDIR=$PWD
mkdir -p "${HOME}/.config"

# ZSH
printf "%s\n" "Linking zsh config"
ZSHDIR="${HOME}/.zsh"
ln -sf "${SCRIPTDIR}/zshenv" "${HOME}/.zshenv"
ln -sf "${SCRIPTDIR}/zshrc" "${HOME}/.zshrc"
rm -rf "${ZSHDIR}"
ln -sf "${SCRIPTDIR}/zsh" "${ZSHDIR}"

# Vim
printf "%s\n" "Linking vim config"
VIMDIR="${HOME}/.config/nvim"
rm -rf "${VIMDIR}"
ln -sf "${SCRIPTDIR}/nvim" "${VIMDIR}"

# Doom
printf "%s\n" "Linking doom emacs config"
DOOMDIR="${HOME}/.doom.d"
rm -rf "${DOOMDIR}"
ln -sf "${SCRIPTDIR}/doom.goodsprings.d" "${DOOMDIR}"

# Tmux
printf "%s\n" "Linking tmux config"
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Tridactyl
ln -sf "${SCRIPTDIR}/tridactyl" "${HOME}/.config/tridactyl"
