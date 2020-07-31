#! /bin/bash

SCRIPTDIR=$PWD
mkdir -p "${HOME}/.config"

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

