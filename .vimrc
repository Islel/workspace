""""""""""""""""""""""""""""""""""""""""""""""""""
" VimPlug
""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'haya14busa/incsearch.vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""
set autoread        " read file changed outside of Vim

let mapleader=","   " mapping with leader ,

""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""
set number          " show line number 
set cursorline      " show line of cursor
set showmatch       " show matching bracket
set lazyredraw      " redraw after processing
set wildmenu        " autocomplete for command menu
set wildmode=longest:full,full  " completion mode with 'wildchar' 
set backspace=indent,eol,start  " change backspace behavior

""""""""""""""""""""""""""""""""""""""""""""""""""
" Color and Font
""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

set encoding=utf-8

""""""""""""""""""""""""""""""""""""""""""""""""""
" Spaces and Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent      " indent when starting a new line
set smartindent     " smart auto indenting

set expandtab       " space instead of tab
set smarttab        " smart tab
set shiftwidth=4    " number of spaces for indent
set tabstop=4       " number of spaces of a tab
set softtabstop=4   " number of spaces of a tab when editing

set wrap            " wrap line longer than window
set linebreak       " wrap line at 'breakat'
set textwidth=80    " maximum width of text

""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch        " highlight search
set incsearch       " search as typing
set ignorecase      " ignore case while searching
set smartcase       " search upper case while ignorecase is on

" Incsearch.vim
let g:incsearch#auto_nohlsearch=1
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping
""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>w :w!<cr>
