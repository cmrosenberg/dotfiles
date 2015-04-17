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

<em>Until I level up my scripting fu, you have to run [bootstrap-ideconfig.sh](./vim/bootstrap-ideconfig.sh) and [set-os-settings.sh](./tmux/set-os-settings.sh)
from the directory where the script itself resides (where you cloned it into).</em>

### Credits

* [Tim Pope&apos;s vim-sensible repo](https://github.com/tpope/vim-sensible)
* [seebi's tmux-colors-solarized repo](https://github.com/seebi/tmux-colors-solarized). I include some
colors from this repo.

### License

See each inidivudal script and plugin for details. Unless otherwise stated,
all code is licensed according to the MIT-license:
See [LICENSE.txt](./LICENSE.txt).
