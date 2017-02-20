execute pathogen#infect()
set nocompatible
filetype off

let g:gruvbox_italic=1
syntax enable
colors gruvbox
set background=dark
filetype plugin indent on
let g:airline_theme = 'gruvbox'

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set nowrap

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap jj <Esc>

let g:netrw_banner = 0
let g:netrw_liststyle = 3

set laststatus=2

