#!/bin/sh
#Bootstraps Vundle and installs all plugins

IDE="$(pwd)/ide.vim";
CORE="$(pwd)/core.vim";

#Append core.vim to the IDE file
echo "source $CORE" >> $IDE

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -u $IDE +PluginInstall +qall
