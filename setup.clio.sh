#! /bin/sh

SCRIPTDIR=$PWD

mkdir -p "${HOME}/.config/fish"
mkdir -p "${HOME}/.config/nvim"

# Bash
ln -sf "${SCRIPTDIR}/bash_profile" "${HOME}/.bash_profile"
ln -sf "${SCRIPTDIR}/bashrc" "${HOME}/.bashrc"
ln -sf "${SCRIPTDIR}/bashrc.clio" "${HOME}/.bashrc.local"

# Nvi
ln -sf "${SCRIPTDIR}/exrc" "${HOME}/.exrc"

# Tmux
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Vim
ln -sf "${SCRIPTDIR}/vimrc" "${HOME}/.config/nvim/init.vim"
ln -sf "${SCRIPTDIR}/vimrc.clio" "${HOME}/.config/nvim/init.local.vim"

# Tridactyl
ln -sf "${SCRIPTDIR}/tridactylrc" "${HOME}/.tridactylrc"


# Fish
ln -sf "${SCRIPTDIR}/config.fish" "${HOME}/.config/fish/config.fish"
ln -sf "${SCRIPTDIR}/config.clio.fish" "${HOME}/.config/fish/config.local.fish"

# Org
ln -sf "${SCRIPTDIR}/org" "${HOME}/org"

# Emacs
ln -sf "${SCRIPTDIR}/emacs.d" "${HOME}/.emacs.d"

