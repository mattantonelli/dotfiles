#!/usr/bin/env bash

DOTFILES="`pwd`"

info() {
  printf "  [ \033[00;34m..\033[0m ] $1\n"
}

success() {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

symlink_files() {
  ln -s $1 $2
  success "linking $1 to $2"
}

symlink_vimrc() {
  vimrc_destination="$HOME/.vimrc"
  if [ -L $vimrc_destination ]; then
    info "symlink already exists $vimrc_destination"
  else
    symlink_files "$HOME/.vim/etc/vimrc" $vimrc_destination
  fi
}

install_dotfiles() {
  for source in `find $DOTFILES -maxdepth 1 | grep -v 'scripts' | grep -v '.git$' | grep -v '.dotfiles$' | grep -v '.gitmodules$' | grep -v '.gitattributes$'`; do
    destination="$HOME/`basename $source`"
    if [ -L $destination ]; then
      info "symlink already exists $destination"
    elif [ -d $destination ]; then
      info "directory already exists $destination"
    elif [ -f $destination ]; then
      info "file already exists $destination"
    else
      symlink_files $source $destination
    fi
  done
}

install_dotfiles
symlink_vimrc
