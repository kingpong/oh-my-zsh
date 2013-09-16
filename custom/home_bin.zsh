
pathmunge()
{
    if [[ -z "$GREP" ]]; then
        GREP=(/usr/bin/grep /bin/grep)
        GREP=($^GREP(N))
    fi
    if ! echo "$PATH" | $GREP[1] -qE "(^|:)$1($|:)" ; then
      if [ "$2" = "after" ] ; then
        PATH="$PATH:$1"
      else
        PATH="$1:$PATH"
      fi
    fi
}

if [[ -d "$HOME/bin" ]]; then
    pathmunge "$HOME/bin"
fi

