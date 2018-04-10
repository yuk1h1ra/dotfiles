call plug#begin('~/.local/share/nvim/plugged')

Plug 'jacoborus/tender.vim'
Plug 'itchyny/lightline.vim'
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
set list listchars=tab:>-,trail:-

set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

set wildmenu wildmode=list

" colorscheme
syntax enable
colorscheme tender
let g:lightline = {
    \ 'colorscheme': 'tender'
    \ }
set laststatus=2
set noshowmode
highlight LineNr ctermfg=gray
highlight clear CursorLine

" transparent background
let g:seiya_auto_enable = 1
