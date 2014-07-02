#!/bin/bash
files= ".vimrc .vimrc.before .vimrc.bundles .vimrc.local .vimrc.bundles.local"
for file in $files ; do
    if [[ -a "~/$file" ]]; then
        cp ~/$file .
    fi
done
