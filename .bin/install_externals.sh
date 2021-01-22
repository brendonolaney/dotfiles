#!/bin/sh

install_homebrew() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
}

install_doom() {
  rm -rf "${HOME}/.emacs.d"
  git clone --depth 1 "https://github.com/hlissner/doom-emacs" \
                      "${HOME}/.emacs.d"
  ~/.emacs.d/bin/doom install
}

install_fzf() {
  /usr/local/opt/fzf/install
}

install_pure() {
  mkdir -p "${HOME}/.zsh/"
  git clone https://github.com/sindresorhus/pure.git "${HOME}/.zsh/pure"
}

install_vimplug() {
  sh -c 'curl -fLo "${HOME}/.local/share/nvim/site/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  nvim +PlugInstall +qall
}

