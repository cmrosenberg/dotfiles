" These are the essential settings I need. It serves as a standalone, minimal
" configuration.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   SETTINGS FROM SENSIBLE.VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Attribution:  Tim Pope (https://github.com/tpope/vim-sensible)
" Sensible.vim is licensed under the same terms as vim. See :help license

if exists('g:loaded_sensible') || &compatible
  finish
else
  let g:loaded_sensible = 1
endif

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab
set nrformats-=octal
set shiftround
set ttimeout
set ttimeoutlen=100
set incsearch

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set laststatus=2
set ruler
set showcmd
set wildmenu

if !&scrolloff
  set scrolloff=1
endif

if !&sidescrolloff
  set sidescrolloff=5
endif

set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if v:version > 703 || v:version == 703 && has("patch541")
    set formatoptions+=j " Delete comment character when joining commented lines
endif

if &shell =~# 'fish$'
  set shell=/bin/bash
endif

set autoread
set fileformats+=mac

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

inoremap <C-U> <C-G>u<C-U>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    GENERAL OPTIONS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Enable listchars
set list

"Allow switching between unsaved buffers
set hidden

" (i) Enable visualbell instead of beeping.
" (ii) Set type of visualbell to no type - ie. disable all bells completely.
set visualbell t_vb=

" If the feature is available,mark any line that exceeds 80 columns with a red
" strikethrough on the 81st column. Kudos to Damian Conway for this.
" Availablie if vim version >= 7.3.
if exists("&colorcolumn")
    highlight ColorColumn ctermbg=red
    call matchadd('ColorColumn', '\%81v', 100)
endif

" I disable backup as I think it litters up my directories. Best practice
" dictates that I should use version control anyway.
set nobackup

" Disable swap files, for the same reasons stated w.r.t backup files.
set noswapfile

" Tell Vim to automaticaly read in changes happening to the file from outside
set autoread

" Don't override newline settings if a file uses mac-style newlines
set fileformats+=mac

" Show the mode I'm currently in
set showmode

" Padd the cursor with some lines to give the current line context
set scrolloff=3

"If browsing a line vertically: let there be a padding around the cursor
"of at least five columns.
set sidescrolloff=5

" Insert a single space rather than two after a '.', '?' and 'I' when " joining
" lines
set nojoinspaces

" Include as much as possible of the last line of the file - do not simply
" relace it with '@'-lines
set display+=lastline


" This will probably be set automatically in most terminals,
" but I set it explicitly because it is applicable to all terminals I'm likely
" to work with
set ttyfast

if exists("&wildmenu")

    "First complete till longest common string. If more than one match, list
    "all matches."
    set wildmode=longest,list
    set wildignore+=*.DS_Store " OSX metadata
    set wildignore+=*.aux,*.out,*.toc " LaTeX intermediate files
    set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.tiff " binary images
    set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
    set wildignore+=*.pyc " Python byte code
    set wildignore+=*.spl " compiled spelling word lists
    set wildignore+=*.sw? " Vim swap files
endif

" Use case insensitive search, except when search string uses capital letters
set ignorecase
set smartcase

" Highlight search terms
set hlsearch

" If vim prints an error message, don't immediately close it.
set debug=msg

" Use persistent undo. Kudos to Ethan Schoonover (@altercation on Github)
" for this.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
let maplocalleader = ";"

" Make it easier to edit and source .vimrc on the fly
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Make it easier to edit and source the local configurations on the fly
nnoremap <leader>el :vsplit ~/.vimrc.local<cr>
nnoremap <leader>sl :source ~/.vimrc.local<cr>

" Make it easier to close windows and buffers
nnoremap <leader>c :bd<cr>
nnoremap <localleader>c :close<cr>
nnoremap <leader>C :bd!<cr>

"Make it easier to open a new window
nnoremap <leader>n :new<cr>

"Make it easier to follow links when reading help
nnoremap <leader><cr> <c-]>

"More intuitive movement
nnoremap H 0
nnoremap L $

"Map jk to Escape for easier mode switching"
inoremap jk <esc>

" Extremely crude mappings for timestamps.
:nnoremap <leader>t o<Esc>"=strftime("%Y, Week %V, %A %B %d at %X %Z: ")<C-M>pA
:nnoremap <leader>T O<Esc>"=strftime("%Y, Week %V, %A %B %d at %X %Z: ")<C-M>pA
