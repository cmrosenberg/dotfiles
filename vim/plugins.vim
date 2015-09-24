"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       VUNDLE INITIALIZATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Run :PluginInstall to install these

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
call vundle#end()
filetype plugin indent on

"Color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'junegunn/seoul256.vim'
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'


"Awesomeness from Junegunn Choi
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

"Awesomeness from Tim Pope
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-tbone'

Plugin 'pangloss/vim-javascript'

Plugin 'scrooloose/syntastic'

Plugin 'LaTeX-Box-Team/LaTeX-Box'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       PLUGIN CONFIGURATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_open=0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_mode_map = {'mode': 'active'}
let g:syntastic_javascript_checkers = ['jshint']

autocmd FileType java let b:dispatch = 'javac %'
autocmd FileType tex let b:dispatch = 'pdflatex % -file-line-error'

autocmd FileType tex set commentstring=\%%s
autocmd FileType sml setlocal commentstring=(*%s*)

let g:LatexBox_Folding=1

runtime! ftplugin/man.vim
