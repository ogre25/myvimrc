#!/bin/bash
ho=$HOME/.vim/bundle
if [ ! -e $ho ];then
    mkdir $ho
fi
echo "1.vimsetup
2.vimsetup-include-youcompleteme
3.vimsetup-include-youcompleteme-jedi
4.vimsetup-include-youcompleteme-jedi-phpcomplete"
echo -n "enter your choice:"
read num
case $num in
    1)
        git clone https://github.com/VundleVim/Vundle.vim.git $ho/Vundle.vim && cp vimrc $HOME/.vimrc && vim -c 'PluginInstall' -c 'qa!'
        ;;

    2)
        git clone https://github.com/VundleVim/Vundle.vim.git $ho/Vundle.vim && cp vimrc-include-youcompleteme $HOME/.vimrc
        git clone https://github.com/ycm-core/YouCompleteMe.git $ho/YouCompleteMe && cd $ho/YouCompleteMe && git submodule update --init --recursive && sudo python3 install.py --clang-completer && vim -c 'PluginInstall' -c 'qa!'
        ;;

    3)
        git clone https://github.com/VundleVim/Vundle.vim.git $ho/Vundle.vim && cp vimrc-include-youcompleteme-jedi $HOME/.vimrc
        git clone https://github.com/ycm-core/YouCompleteMe.git $ho/YouCompleteMe && cd $ho/YouCompleteMe && git submodule update --init --recursive && sudo python3 install.py --clang-completer && vim -c 'PluginInstall' -c 'qa!'
        ;;

    4)
        git clone https://github.com/VundleVim/Vundle.vim.git $ho/Vundle.vim && cp vimrc-include-youcompleteme-jedi-phpcomplete $HOME/.vimrc
        git clone https://github.com/ycm-core/YouCompleteMe.git $ho/YouCompleteMe && cd $ho/YouCompleteMe && git submodule update --init --recursive && sudo python3 install.py --clang-completer && vim -c 'PluginInstall' -c 'qa!'

esac

exit 0
