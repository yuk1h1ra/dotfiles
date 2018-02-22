" Plugin Manager with vim-plug
call plug#begin('~/.vim/plugged')

" colorscheme
Plug 'jacoborus/tender.vim'
" custom status line
Plug 'vim-airline/vim-airline'

call plug#end()

" 行番号表示
set number
" カーソル位置表示
set ruler
" カーソルライン表示
set cursorline
" ステータスバー表示
set laststatus=2
" 対応括弧の強調
set showmatch
" 不可視文字の表示
set list
" 不可視文字の表示の変更
set listchars=tab:>-,trail:-

" タブ文字の幅
set tabstop=4
" 自動インデントでずれる幅
set shiftwidth=4
" 前の行のインデントを継続
set autoindent
" 入力された行の末尾に合わせて行のインデントの増減
set smartindent

" not create swap file
set noswapfile
" Syntax highlight
syntax enable
colorscheme tender
" airline color
let g:airline_theme = 'tender'

" share clipboard
set clipboard=unnamed

