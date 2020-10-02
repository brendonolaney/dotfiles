PATH="/usr/local/bin:/usr/local/sbin:${PATH}"  # Homebrew bins
PATH="${HOME}/.emacs.d/bin:${PATH}"  # DOOM bin
PATH="${HOME}/bin:${PATH}"  # User bins
export PATH

export EDITOR='nvim'
export VISUAL='nvim'
export GITEDITOR='nvim'

if [[ -r "${HOME}/.clio_profile" ]]
then
  emulate sh -c "source $HOME/.clio_profile"
fi
