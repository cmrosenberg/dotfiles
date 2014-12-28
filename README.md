### About

This repo hosts my various dotfiles. I intend to keep things simple, unobtrusive,
and easily extendible where needed.

### How to install

Each program has its own folder of configuration files. In most cases it is
sufficient to simply make a symbolic link from your home directory to what
you are interested in.

For Vim, you can either symlink [core.vim](./vim/core.vim), which gives you a
minimal but good configuration. If you want a more IDE-like experience with
additional plugins, run [bootstrap-ideconfig.sh](./vim/bootstrap-ideconfig.sh)
and symlink [ide.vim](vim/ide.vim) as your vimrc-file.
[ide.vim](./vim/ide.vim) includes [core.vim](./vim/core.vim).

[Tim Pope&apos;s vim-sensible](https://github.com/tpope/vim-sensible).


### License
[BSD 2-Clause license](http://opensource.org/licenses/BSD-2-Clause) See LICENSE.TXT.

### Sources of inspiration

#### Vim

* [Tim Pope&apos;s vim-sensible repo](https://github.com/tpope/vim-sensible)
 
 #### General

 * [Hashrocket DotMatrix](https://github.com/hashrocket/dotmatrix)
 * [Square: Maximum Awesome](https://github.com/square/maximum-awesome/)

