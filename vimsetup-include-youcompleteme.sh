#!/bin/bash
ho=$HOME/.vim/bundle
vun=$(git clone https://github.com/VundleVim/Vundle.vim.git $ho/Vundle.vim && cp vimrc-include-youcompleteme $HOME/.vimrc)
you=$(git clone https://github.com/ycm-core/YouCompleteMe.git $ho/YouCompleteMe && cd $ho/YouCompleteMe && git submodule update --init --recursive && sudo python3 install.py --clang-completer && vim -c 'PluginInstall' -c 'qa!')
if [ ! -e $ho ];then
    mkdir $ho
fi
echo $vun
echo $you
