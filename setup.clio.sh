#! /bin/sh

SCRIPTDIR=$PWD

mkdir -p "${HOME}/.config/nvim"

# Bash
ln -sf "${SCRIPTDIR}/bash_profile" "${HOME}/.bash_profile"
ln -sf "${SCRIPTDIR}/bashrc" "${HOME}/.bashrc"
ln -sf "${SCRIPTDIR}/bashrc.clio" "${HOME}/.bashrc.local"

# Tmux
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Vim
ln -sf "${SCRIPTDIR}/vimrc" "${HOME}/.config/nvim/init.vim"
ln -sf "${SCRIPTDIR}/vimrc.clio" "${HOME}/.config/nvim/init.local.vim"

# Tridactyl
ln -sf "${SCRIPTDIR}/tridactylrc" "${HOME}/.tridactylrc"

# Emacs
ln -sf "${SCRIPTDIR}/emacs.d" "${HOME}/.emacs.d"

