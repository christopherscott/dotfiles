function info {
  echo "$COLOR[122]$1$reset_color"
}

function error {
  echo "$COLOR[001]$1$reset_color"
}

function silent {
  $1 > /dev/null 2>&1;
}

function divider {
  echo '\n...\n'
}

function load_colors {
  typeset -Ag COLOR
  for color in {000..255}; do
      COLOR[$color]="[38;5;${color}m"
  done
}

function safe_source {
  info "Loading $(basename $1)"
  if [[ -f $1 && -r $1 ]]; then
    source $1
  else
    error "Error: could not load $1"
  fi
}

function safe_link {
  # remove exising symlink
  if [[ -h $2 ]]; then
    info "Symlink $2 found, removing"
    rm $2
  fi

  # store existing 'filename' as 'filename_old'
  if [[ -e $2 ]]; then
    info "File $2 found, moving to $2_old"
    mv $2 "$1_old"
  fi

  info "Symlinking $1 to $2"
  ln -s $1 $2
}

function banner {
  echo $COLOR[002]; cat $1; echo $reset_color
}

