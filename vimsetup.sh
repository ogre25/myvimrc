#!/bin/bash
ho=$HOME/.vim/bundle
vun=$(git clone https://github.com/VundleVim/Vundle.vim.git $ho/Vundle.vim && cp vimrc $HOME/.vimrc)
if [ ! -e $ho ];then
    mkdir $ho
fi
$vun
