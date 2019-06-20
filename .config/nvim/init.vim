call plug#begin('~/.local/share/nvim/plugged')

Plug 'yuk1h1ra/transparent.vim'
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
Plug 'reireias/vim-cheatsheet'
Plug 'Shougo/defx.nvim', { 'do': 'UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'

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
set list listchars=tab:>-,trail:･

set laststatus=2
set noshowmode

" colorscheme
set termguicolors
syntax enable
colorscheme tender
highlight clear CursorLine

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

 " vim-cheatsheet
let g:cheatsheet#cheat_file = '~/.cheatsheet.md'

" NormalFloat color
augroup NormalFloatBG
  autocmd!
  autocmd BufWinEnter * highlight NormalFloat guibg=#282828
augroup END

" Defx.nvim settings
nnoremap <silent> <C-e>
\ :<C-u>Defx -show-ignored-files -split=floating -columns=icons:filename:type<CR>
autocmd FileType defx call s:defx_settings()
function! s:defx_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR>
  \ defx#is_directory() ?
  \ defx#do_action('open') :
  \ defx#do_action('multi', ['drop', 'quit'])
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#is_directory() ?
  \ defx#do_action('open') :
  \ defx#do_action('multi', ['drop', 'quit'])
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('multi', [['drop', 'vsplit'], 'quit'])
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('multi', [['drop', 'split'], 'quit'])
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction
