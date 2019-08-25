#! /bin/sh

SCRIPTDIR=$PWD

# Bash
ln -sf "${SCRIPTDIR}/bash_profile" "${HOME}/.bash_profile"
ln -sf "${SCRIPTDIR}/bashrc" "${HOME}/.bashrc"
ln -sf "${SCRIPTDIR}/bashrc.clio" "${HOME}/.bashrc.local"

# Tmux
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Vim
VIMDIR="${HOME}/.config/nvim"
mkdir -p "${HOME}/.config"
ln -sf "${SCRIPTDIR}/nvim" "${HOME}/.config/nvim"
ln -sf "${VIMDIR}/init.clio.vim" "${VIMDIR}/init.local.vim"

# Tridactyl
ln -sf "${SCRIPTDIR}/tridactylrc" "${HOME}/.tridactylrc"

# Emacs
ln -sf "${SCRIPTDIR}/emacs.d" "${HOME}/.emacs.d"

