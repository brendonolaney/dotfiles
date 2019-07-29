#! /bin/sh

SCRIPTDIR=$PWD

mkdir -p "${HOME}/.config/fish"
mkdir -p "${HOME}/.config/nvim"

# Bash
ln -sf "${SCRIPTDIR}/bashrc" "${HOME}/.bashrc"
ln -sf "${SCRIPTDIR}/bash_profile" "${HOME}/.bash_profile"

# Nvi
ln -sf "${SCRIPTDIR}/exrc" "${HOME}/.exrc"

# Tmux
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Vim
ln -sf "${SCRIPTDIR}/vimrc" "${HOME}/.config/nvim/init.vim"

# Tridactyl
ln -sf "${SCRIPTDIR}/tridactylrc" "${HOME}/.tridactylrc"

# Fish
ln -sf "${SCRIPTDIR}/config.fish" "${HOME}/.config/fish/config.fish"

