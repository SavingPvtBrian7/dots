set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-syntastic/syntastic'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'morhetz/gruvbox'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()
filetype plugin indent on

let g:gruvbox_contrast_dark="hard"
set background=dark
colorscheme gruvbox

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='gruvbox'

"let g:syntastic_alwayspopulate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

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

command Hterm sp | term
command Vterm vs | term
command TermNum set nonumber | set norelativenumber

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap kj <Esc>
tnoremap kj <C-\><C-n> 

function! WritingMode()
    setlocal formatoptions=1
    map j gj
    map k gk
    setlocal formatprg=par
    setlocal wrap
    setlocal linebrea
    setlocal breakindent
endfunction

command! W call WritingMode()

