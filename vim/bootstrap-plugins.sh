#!/bin/sh
#Bootstraps Vundle and installs all plugins

PLUGINCONFIG="$(pwd)/plugins.vim";

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -u $PLUGINCONFIG +PluginInstall +qall
ln -s $PLUGINCONFIG ~/.vimrc.plugins
