#!/bin/bash

cd ~/.dotfiles
if [ $? -ne 0 ]; then
    echo "error changing directory"
    exit 1
fi

git fetch
git git reset --hard origin/master

for file in *; do
    if [ -d "$file" ]; then
        stow --verbose=2 $file
    fi
done

source ~/.bashrc
