#!/bin/bash

cd ~/.dotfiles
if [ $? -ne 0 ]; then
    echo "error changing directory"
    exit 1
fi

git fetch origin
update_check="$(git log HEAD..origin/master --oneline)"
if [ "$update_check" != "" ]; then
    git reset --hard origin/master
fi

for file in *; do
    if [ -d "$file" ]; then
        stow --verbose=2 $file
    fi
done

# neovim: install vim-plung
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

source ~/.bashrc
