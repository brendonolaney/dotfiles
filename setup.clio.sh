#! /bin/sh

SCRIPTDIR=$PWD

# ZSH
ZSHDIR=zsh
ln -sf "${SCRIPTDIR}/${ZSHDIR}/zprofile" "${HOME}/.zprofile"
ln -sf "${SCRIPTDIR}/${ZSHDIR}/zprofile.clio" "${HOME}/.zprofile.local"
ln -sf "${SCRIPTDIR}/${ZSHDIR}/zshrc" "${HOME}/.zshrc"
ln -sf "${SCRIPTDIR}/${ZSHDIR}/zshrc.clio" "${HOME}/.zshrc.local"

# Tmux
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Vim
VIMDIR="${HOME}/.config/nvim"
mkdir -p "${HOME}/.config"
ln -sf "${SCRIPTDIR}/nvim" "${HOME}/.config/nvim"
ln -sf "${VIMDIR}/init.clio.vim" "${VIMDIR}/init.local.vim"

# Emacs
ln -sf "${SCRIPTDIR}/emacs.d" "${HOME}/.emacs.d"
