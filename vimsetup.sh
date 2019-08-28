#!/bin/bash
ho=$HOME/.vim/bundle
if [ ! -e $ho ];then
    mkdir $ho
    git clone https://github.com/VundleVim/Vundle.vim.git $ho/Vundle.vim && cp vimrc $HOME/.vimrc && vim +PluginInstall +qall
else
    git clone https://github.com/VundleVim/Vundle.vim.git $ho/Vundle.vim && cp vimrc $HOME/.vimrc && vim +PluginInstall +qall
fi
