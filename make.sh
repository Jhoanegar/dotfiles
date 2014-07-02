#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
spdir=~/.spf13-vim-3
spfiles=".vimrc .vimrc.before .vimrc.bundles"
normalfiles=".vimrc.local .vimrc.bundles.local"

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
echo -n "Creating symbolic links ..."
cd ~
for file in $spfiles ; do
  if [[ -a $dir/$file ]]; then
    cp $dir/$file $olddir/$file
  fi
  ln -s $dir/$file $spdir/$file
done

for file in $normalfiles ; do
  if [[ -a $dir/$file ]]; then
    cp $dir/$file $olddir/$file
  fi
  ln -s $dir/$file ~/$file
done

echo "done"
