#!/bin/bash
ho=$HOME/.vim/bundle
if [ ! -e $ho ];then
    mkdir $ho
fi
git clone https://github.com/VundleVim/Vundle.vim.git $ho/Vundle.vim
cp vimrc $HOME/.vimrc
vim +PluginInstall +qall
