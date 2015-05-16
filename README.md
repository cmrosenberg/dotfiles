### About

This repo hosts my various dotfiles. I intend to keep things simple, unobtrusive,
and easily extendible where needed.

### How to install

Each program has its own folder of configuration files. In most cases it is
sufficient to simply make a symbolic link from your home directory to what
you are interested in.

#### Vim

For a basic configuration, simply symlink [vimrc.vim](./vim/vimrc.vim).

If you want the plugins as well, run [bootstrap-plugins.sh](./vim/bootstrap-plugins.sh)
from the directory the script is located (requires git). This will install
[Vundle](https://github.com/gmarik/Vundle.vim), fetch and install all the plugins
described and configured in [plugins.vim](./vim/plugins.vim) and symlink
[plugins.vim](./vim/plugins.vim) to <code>~/.vimrc.plugins</code>.

### Credits

* [Tim Pope&apos;s vim-sensible repo](https://github.com/tpope/vim-sensible)
* [seebi's tmux-colors-solarized repo](https://github.com/seebi/tmux-colors-solarized). I include some
colors from this repo.

### License

See each inidivudal script and plugin for details. Unless otherwise stated,
all code is licensed according to the MIT-license:
See [LICENSE.txt](./LICENSE.txt).
