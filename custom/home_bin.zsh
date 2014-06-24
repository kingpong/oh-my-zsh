
pathmunge()
{
  dir=$1
  at=$2

  # first remove it if it is there
  path=(${path#$dir})

  if [[ $at == "after" ]]; then
      path=($path $dir)
  else
      path=($dir $path)
  fi
}

if [[ -d "$HOME/bin" ]]; then
  pathmunge "$HOME/bin"
fi

