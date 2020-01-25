#! /bin/sh

SCRIPTDIR=$PWD
mkdir -p "${HOME}/.config"

# ZSH
ZSHDIR="${HOME}/.zsh"
ln -sf "${SCRIPTDIR}/zshenv" "${HOME}/.zshenv"
ln -sf "${SCRIPTDIR}/zshrc" "${HOME}/.zshrc"
rm -rf "${ZSHDIR}"
ln -sf "${SCRIPTDIR}/zsh" "${ZSHDIR}"
ln -sf "${ZSHDIR}/zshenv.clio" "${ZSHDIR}/zshenv.local"
ln -sf "${ZSHDIR}/zshrc.clio" "${ZSHDIR}/zshrc.local"

# Vim
VIMDIR="${HOME}/.config/nvim"
rm -rf "${VIMDIR}"
ln -sf "${SCRIPTDIR}/nvim" "${VIMDIR}"
ln -sf "${SCRIPTDIR}/nvim/init.clio.vim" "${SCRIPTDIR}/nvim/init.local.vim"

# Emacs
EMACSDIR="${HOME}/.emacs.d"
rm -rf "${EMACSDIR}"
ln -sf "${SCRIPTDIR}/emacs.d" "${EMACSDIR}"

# Tmux
ln -sf "${SCRIPTDIR}/tmux.conf" "${HOME}/.tmux.conf"

# Tridactyl
ln -sf "${SCRIPTDIR}/tridactyl" "${HOME}/.config/tridactyl"
