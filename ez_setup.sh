#!/bin/bash

OS_VERSION=$1

if [ "$OS_VERSION" = "linux" ]; then
    cat linux-vim/basic-vimrc > ~/.vimrc
    mkdir -p ~/.vim/plugin
    cp linux-vim/dotvim/plugin/cscope_maps.vim ~/.vim/plugin
    echo "Installed Basic Vim configuration completely."
elif [ "$OS_VERSION" = "mac" ]; then
    echo mac
else
    echo -e "INVALID VERSION.\nPlease input with linux/mac."
fi;
