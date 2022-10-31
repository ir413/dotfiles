#!/bin/bash
#
# Sets up symlinks for dotfiles.

# Asks a yes/no question
function ask {
  local question="$1"
  read -p "$question? (y/N) "
  local yn=$(echo "$REPLY" | tr "A-Z" "a-z")
  test "$yn" == 'y' -o "$yn" == 'yes'
}

# Symlinks a file
function symlink {
  local from=$1
  local from_p="$(pwd)/$from"
  local to=$2
  local to_p="$HOME/$to"

  if [ ! -e "$from_p" ]; then
    printf "Error: $from_p does not exist\n"
    return 1
  fi

  if [ ! -e "$to_p" ]; then
    printf "Linking: ~/$to -> $from\n"
    ln -s "$from_p" "$to_p"
  else
    local to_l=$(readlink "$to_p")
    if [ "$?" == 0 -a \( "$to_l" == "$from_p" \) ]; then
      printf "Link exists: ~/$to -> $from\n"
    else
      printf "File exists: $to\n"
      if ask "Overwrite"; then
        rm -f "$to_p"
        symlink "$from" "$to"
      fi
    fi
  fi
}

# Symlinks a file as dotfile
function symlink_dot {
  symlink "$1" ".$1"
}

# Dotfiles to symlink
#symlink_dot "bashrc"
symlink_dot "bash_profile"
symlink_dot "inputrc"
symlink_dot "vimrc"
symlink_dot "gitconfig"
