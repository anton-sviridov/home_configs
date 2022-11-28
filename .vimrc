
syntax on
set nocompatible              " be iMproved, required
set number
set shiftwidth=4
set tabstop=4
set expandtab
" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap
" While searching though a file incrementally highlight matching characters as you type.
set incsearch
" Ignore capital letters during search.
set ignorecase
" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase
" Show partial command you type in the last line of the screen.
set showcmd
" Show the mode you are on the last line.
set showmode
" Show matching words during a search.
set showmatch
" Use highlighting when doing a search.
set hlsearch
" Set the commands to save in history default number is 20.
set history=1000


"
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'ycm-core/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'lifepillar/vim-gruvbox8'



call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox8


let g:ycm_autoclose_preview_window_after_insertion = 1



" my mappings
nnoremap <C-n> :NERDTree<CR>
nnoremap ; :
nnoremap <CR> ko<esc>j


inoremap " ""<left>
inoremap "<tab> ""

inoremap ' ''<left>
inoremap ' ''

inoremap ( ()<left>
inoremap (<tab> ()

inoremap [ []<left>
inoremap [<tab> []

inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
