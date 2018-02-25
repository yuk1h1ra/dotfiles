call plug#begin('~/.local/share/nvim/plugged')

Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
Plug 'thinca/vim-quickrun'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'miyakogi/seiya.vim'

call plug#end()

set number
set cursorline

set autoread
set hidden
set confirm

set incsearch
set ignorecase
set smartcase

set noswapfile
set clipboard=unnamed
set list

set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

set wildmenu

" colorscheme
syntax enable
colorscheme tender
let g:airline_theme = 'tender'
highlight LineNr ctermfg=gray
highlight clear CursorLine

" transparent background
let g:seiya_auto_enable = 1
