#!/bin/bash

cd ~/.dotfiles
for file in *; do
    if [ -d "$file" ]; then
        stow --verbose=2 $file
    fi
done

source ~/.bashrc
