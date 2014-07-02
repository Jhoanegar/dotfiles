#!/bin/bash
files=".vimrc .vimrc.before .vimrc.bundles .vimrc.local .vimrc.bundles.local"
for file in $files ; do
    echo "Reading ~/$file"
    if [[ -a ~/$file ]]; then
        cp ~/$file .
        echo "$file copied"
    fi
done
