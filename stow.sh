#!/bin/bash

cd ~/.dotfiles
if [ $? -ne 0 ]; then
    echo "error changing directory"
    exit 1
fi

git fetch origin
update_check=$(git log HEAD..origin/master --oneline)
if [[ "${update_check}" != "" ]]; then
    git reset --hard origin/master
fi

for file in *; do
    if [ -d "$file" ]; then
        stow --verbose=2 $file
    fi
done

source ~/.bashrc
