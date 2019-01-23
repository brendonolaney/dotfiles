#! /bin/sh

SCRIPTDIR=$PWD

mkdir -p "${HOME}/.config/fish"
mkdir -p "${HOME}/.config/nvim"

ln -sf "${SCRIPTDIR}/bashrc" "${HOME}/.bash_profile"
ln -sf "${SCRIPTDIR}/exrc" "${HOME}/.exrc"
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"
ln -sf "${SCRIPTDIR}/vimrc" "${HOME}/.config/nvim/init.vim"
ln -sf "${SCRIPTDIR}/config.fish" "${HOME}/.config/fish/config.fish"

