call plug#begin('~/.vim/plugged')

Plug 'yuk1h1ra/transparent.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'thinca/vim-quickrun'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'simeji/winresizer'
Plug 'alvan/vim-closetag'
Plug 'rhysd/accelerated-jk'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-jp/vimdoc-ja'

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
set clipboard=unnamedplus
set list listchars=tab:>-,trail:･

set laststatus=2
set noshowmode

" colorscheme
syntax enable
colorscheme solarized
highlight clear CursorLine
highlight NormalFloat guibg=#484848

set autoindent
set smartindent

set tabstop=8
set shiftwidth=2
set softtabstop=2

set wildmenu wildmode=list

set signcolumn=yes

" help mapping
" detail for :help c_CTRL-u
nnoremap <C-h> :<C-u>help<Space>

" winresizer resize size
let g:winresizer_start_key = '<C-w>e'
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1

let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': {
    \     'left': [ ['mode', 'paste'],
    \               ['readonly', 'filename', 'modified', 'charvaluehex'] ]
    \ },
    \ 'component': {
    \     'charvaluehex': '0x%B'
    \ },
    \ }

" accelerated-jk settings
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
let g:accelerated_jk_acceleration_table = [30,60,90,120,150,180]

