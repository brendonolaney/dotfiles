PATH="/usr/local/bin:/usr/local/sbin:${PATH}"  # Homebrew bins
PATH="${HOME}/.emacs.d/bin:${PATH}"  # DOOM bin
PATH="${HOME}/bin:${PATH}"  # User bins
export PATH

export DANGER_GITHUB_API_TOKEN="$(cat ~/.github_access_token)"

export EDITOR='nvim'
export VISUAL='nvim'
export GITEDITOR='nvim'

export OVERMIND_COLORS=241,241,241,241,241,241,241,241,241,241

if [[ -r "${HOME}/.clio_profile" ]]
then
  emulate sh -c "source $HOME/.clio_profile"
fi
