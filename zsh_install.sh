#!/bin/zsh

if [ -e "$HOME/.aliases" ]; then
  zsh_profile_absolute="$HOME/.aliases"
elif [ -e "$HOME/.myaliases" ]; then
  zsh_profile_absolute="$HOME/.myaliases"
elif [ -e "$HOME/.localaliases" ]; then
  zsh_profile_absolute="$HOME/.localaliases"
else
  zsh_profile_absolute="$HOME/.localaliases"
  touch $zsh_profile_absolute
fi

show_untracked_files="export GIT_GEMS_PS1_SHOWUNTRACKEDFILES=true"
source_fancypants="source $PWD/fancypants_sharedrc && source $PWD/fancypants_ps1_zshprompt"

if ( grep source_fancypants $zsh_profile_absolute > /dev/null ); then
  echo "FancyPants PS1 already installed in $zsh_profile_absolute"
else
  printf "\n$source_fancypants\n" >> $zsh_profile_absolute
  echo "Installed FancyPants PS1 into $zsh_profile_absolute"
fi

if ( ! grep "$show_untracked_files" $zsh_profile_absolute > /dev/null ); then
  read REPLY\?"Would you like to show untracked files? This can slow down your prompt when using very large repositories. [y/n] "
  echo # print a newline
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    printf "$show_untracked_files\n" >> $zsh_profile_absolute
  fi
fi

source $zsh_profile_absolute
