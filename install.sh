#!/bin/bash

if [ -e "$HOME/.bash_profile" ]; then
  bash_profile_absolute="$HOME/.bash_profile"
  bash_profile_relative="~/.bash_profile"
elif [ -e "$HOME/.bashrc" ]; then
  bash_profile_absolute="$HOME/.bashrc"
  bash_profile_relative="~/.bashrc"
elif [ -e "$HOME/.profile" ]; then
  bash_profile_absolute="$HOME/.profile"
  bash_profile_relative="~/.profile"
else
  bash_profile_absolute="$HOME/.bash_profile"
  bash_profile_relative="~/.bash_profile"
  touch bash_profile_absolute
fi

source_fancypants="source $PWD/fancypants_sharedrc && source $PWD/fancypants_ps1_bashrc"
show_untracked_files="export GIT_GEMS_PS1_SHOWUNTRACKEDFILES=true"

if ( grep "$source_fancypants" $bash_profile_absolute > /dev/null ); then
  echo "FancyPants PS1 already installed in $bash_profile_relative"
else
  printf "\n$source_fancypants\n" >> $bash_profile_absolute
  echo "Installed FancyPants PS1 into $bash_profile_relative"
fi

if ( ! grep "$show_untracked_files" $bash_profile_absolute > /dev/null ); then
  read -p "Would you like to show untracked files? This can slow down your prompt when using very large repositories. [y/n] " -n 1 -r
  echo # print a newline
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    printf "$show_untracked_files\n" >> $bash_profile_absolute
  fi
fi

source $bash_profile_absolute
