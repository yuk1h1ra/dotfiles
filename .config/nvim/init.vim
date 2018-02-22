call plug#begin('~/.local/share/nvim/plugged')

Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
Plug 'thinca/vim-quickrun'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'

call plug#end()

set noswapfile
set clipboard=unnamed

syntax enable
colorscheme tender
let g:airline_theme = 'tender'

