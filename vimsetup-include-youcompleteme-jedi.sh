#!/bin/bash
ho=$HOME/.vim/bundle
vun=$(git clone https://github.com/VundleVim/Vundle.vim.git $ho/Vundle.vim && cp vimrc-include-youcompleteme-jedi $HOME/.vimrc)
you=$(git clone https://github.com/ycm-core/YouCompleteMe.git $ho/YouCompleteMe && cd $ho/YouCompleteMe && git submodule update --init --recursive && python3 install.py --clang-completer && vim +PluginInstall +qall)
if [ ! -e $ho ];then
    mkdir $ho
fi
echo $vun
echo $you
