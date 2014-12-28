#Bootstraps Vundle and installs all plugins
#Prereqs: git, curl
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -u ide.vim +PluginInstall +qall
