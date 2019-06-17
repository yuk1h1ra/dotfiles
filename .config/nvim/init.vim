call plug#begin('~/.local/share/nvim/plugged')

Plug 'jacoborus/tender.vim'
Plug 'itchyny/lightline.vim'
Plug 'thinca/vim-quickrun'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'simeji/winresizer'
Plug 'alvan/vim-closetag'
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'
Plug 'rhysd/accelerated-jk'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-jp/vimdoc-ja'

Plug 'leafgarland/typescript-vim'

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
set list listchars=tab:>-,trail:-

" colorscheme
set termguicolors
syntax enable
colorscheme tender
set laststatus=2
set noshowmode
" highlight LineNr ctermfg=gray
highlight clear CursorLine

" 背景を透過
" ここをプラグイン化する
highlight Normal ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none
highlight SignColumn ctermbg=none guibg=none
highlight VertSplit ctermbg=none guibg=none
highlight NonText ctermbg=none guibg=none

set autoindent
set smartindent

set shiftwidth=4
set softtabstop=4

set wildmenu wildmode=list

set signcolumn=yes

" help mapping
nnoremap <C-h> :h<Space>

" winresizer resize size
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1

" ale settings
let g:ale_lint_on_enter = 0
let g:ale_sign_error = "\uf05e"
let g:ale_sign_warning = "\uf071"
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" lightline settings
let g:lightline#ale#indicator_checking =  "\uf110 "
let g:lightline#ale#indicator_warnings = "\uf071 "
let g:lightline#ale#indicator_errors = "\uf05e "
let g:lightline#ale#indicator_ok = "\uf00c "

let g:lightline = {
    \ 'colorscheme': 'tender',
    \ 'component_expand': {
    \     'linter_checking': 'lightline#ale#checking',
    \     'linter_warnings': 'lightline#ale#warnings',
    \     'linter_errors': 'lightline#ale#errors',
    \     'linter_ok': 'lightline#ale#ok',
    \ },
    \ 'component_type': {
    \     'linter_checking': 'left',
    \     'linter_warnings': 'warning',
    \     'linter_errors': 'error',
    \     'linter_ok': 'left',
    \ },
    \ 'active': {
    \     'left': [ ['mode', 'paste'],
    \               ['readonly', 'filename', 'modified', 'charvaluehex'],
    \               ['linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok'] ]
    \ },
    \ 'component': {
    \     'charvaluehex': '0x%B'
    \ },
    \ }

" accelerated-jk settings
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
let g:accelerated_jk_acceleration_table = [30,60,90,120,150,180]

