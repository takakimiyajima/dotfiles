#!/bin/sh

DOT_FILES=(
  Brewfile
)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/Git/dotfiles/$file $HOME/$file
done
