" Plugin Manager with vim-plug
call plug#begin('~/.vim/plugged')

Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
Plug 'thinca/vim-quickrun'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'

call plug#end()

set number
set ruler
set cursorline
set laststatus=2
set showmatch
set list
set listchars=tab:>-,trail:-

set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

set noswapfile

syntax enable
colorscheme tender
let g:airline_theme = 'tender'

set clipboard=unnamed

