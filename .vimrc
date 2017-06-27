execute pathogen#infect()
set nocompatible
filetype off

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:gruvbox_italic=1
syntax enable
colors hybrid
set background=dark
filetype plugin indent on
let g:airline_theme='gruvbox'

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set nowrap
set gdefault

set splitbelow
set splitright

nmap ; :

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

tnoremap kj  <C-\><C-n>
inoremap kj <Esc>

command Vterm vs | term
command Hterm sp | term

function! WritingMode()
    setlocal formatoptions=1
    map j gj
    map k gk
    setlocal formatprg=par
    setlocal wrap
    setlocal linebreak
    setlocal breakindent
endfunction

command! W call WritingMode()

let g:netrw_banner = 0
let g:netrw_liststyle = 3

set laststatus=2
