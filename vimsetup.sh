#!/bin/bash
ho=$HOME/.vim/bundle
if [ ! -e $ho ];then
    mkdir $ho
    git clone https://github.com/VundleVim/Vundle.vim.git $ho/Vundle.vim && cp vimrc $HOME/.vimrc
    git clone https://github.com/ycm-core/YouCompleteMe.git $ho/YouCompleteMe && cd $ho/YouCompleteMe && git submodule update --init --recursive && python3 install.py --clang-completer && vim +PluginInstall +qall
else
    git clone https://github.com/VundleVim/Vundle.vim.git $ho/Vundle.vim && cp vimrc $HOME/.vimrc
    git clone https://github.com/ycm-core/YouCompleteMe.git $ho/YouCompleteMe && cd $ho/YouCompleteMe && git submodule update --init --recursive && python3 install.py --clang-completer && vim +PluginInstall +qall
fi
