
if ! /usr/bin/which -s mysql &>/dev/null; then
  if [[ -x /usr/local/mysql/bin/mysql ]]; then
    export PATH="$PATH:/usr/local/mysql/bin"
  fi
fi
