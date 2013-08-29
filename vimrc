""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    PATHOGEN 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load the pathogen plugin system if this is installed.

"Read ex commands from the file, and source these commands, that is, include
"them in the vim configuration. If this file does not exist, a silent error
"occurs.
runtime! autoload/pathogen.vim

"This assumes that you keep your bundles in  ~/.vim/bundle. If this is not
" the case, issue
"   call pathogen#infect('/where/your/bundles/are/{}').
" See https://github.com/tpope/vim-pathogen for details.
if exists("g:loaded_pathogen")
    call pathogen#infect()
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    GENERAL OPTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable (strict) vi compatibility. 
set nocompatible

" (i) Detect filetype  
" (ii) use detected filetype to inform behaviour of plugins and indentation 
filetype plugin indent on

"If Vim is compiled with multibyte character support (e.g. utf-8):
" (i) 	Make vim use utf-8 internally.
" (ii)  When opening a file, first check for utf BOMs and enable a proper
" 	unicode interpretation if that is the case. If the utf-8 related
" 	options fail, attempt the default settings from the environment. 
" 	If this also fails, use latin1, which is guaranteed to work 
" 	but might cause loss of information.
" (iii) Make vim assume a file is encoded in utf-8 unless explicitly
" 	specified. Consequently, new files in utf-8. 
" 	Since the option is set with 'setglobal', we can still alter the 
" 	fileencoding of the local buffer using 'set fileencoding=foo' if
" 	so desired.
if has("multi_byte")
    set encoding=utf-8  
    set fileencodings=ucs-bom,utf-8,default,latin1
    setglobal fileencoding=utf-8
endif

" Allow having hidden buffers with unsaved changes.
set hidden

" I disable backup as I think it litters up my directories. Best practice
" dictates that I should use version control anyway.
set nobackup

" Disable swap files, for the same reasons stated w.r.t backup files.
set noswapfile

" Tell Vim to automaticaly read in changes happening to the file from outside
set autoread 

" Until I come up with some genius (ie. stupid) ways of using these...
set nomodeline


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       AESTHETICS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" If the feature is available, enable a colored line on column 80 so overtly
" long lines can more easily be avoided. Availablie if vim version >= 7.3.
if exists("&colorcolumn")
    set colorcolumn=80
endif


" Have special characters showing tabs. The extends and preceeds
" come into play when wrap is off and a line continues past the end of the
" screen. 
if exists("&list")
    set list
    set listchars=tab:▸\ ,extends:❯,precedes:❮
endif

" Convert tabs into spaces
set expandtab

" Sets two-space indentation
set shiftwidth=4
set tabstop=4

" If no filetype specific indentation is found, indent according to first line
set autoindent

"Enable realtive file numbering if feature is enabled.
if exists('&relativenumber')
    set relativenumber
else
    set number
endif

" Enable syntax highlighting if either (i) or (ii) (or both):
" (i) The terminal has more than two colors.
" (ii) Vim is run from a gui.
if &t_Co > 2 || has("gui_running")
    syntax on
endif

" Set ruler so that column and line number is shown
set ruler

" Show the mode I'm currently in
set showmode

" Padd the cursor with some lines to give the current line context
set scrolloff=3

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       USABILITY
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" If compiled with ++wildmenu, enable easier command-line completion 
if exists("&wildmenu")
    set wildmenu
endif

" (i) Enable visualbell instead of beeping. 
" (ii) Set type of visualbell to no type - ie. disable all bells completely.
set visualbell t_vb=

compiled with +cmdline_info:
" Make vim print the command I'm currently typing in
if exists("&showcmd")
    set showcmd
endif

" Use case insensitive search, except when search string uses capital letters
set ignorecase
set smartcase

" Highlight search terms
set hlsearch

" If supported, use incremental search
if exists('&incsearch')
    set incsearch
endif

" If vim prints an error message, don't immediately close it.
set debug=msg

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       EXTENSIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Extend this setup with local configurations (colorscheme etc)
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
