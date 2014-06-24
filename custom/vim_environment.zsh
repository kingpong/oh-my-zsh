
# allows control-s to go through to vim, for Command-T
if [[ -t 0 ]]; then
  stty -ixon
fi

export VISUAL=vim
export EDITOR=vim
