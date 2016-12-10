set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"start plugins

Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'

"end plugins

call vundle#end()
filetype plugin indent on

syntax on
let mapleader = ","
color koehler
set tabstop=4
set shiftwidth=4
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
    set noexpandtab
else
    set expandtab
endif
set hlsearch
set number
inoremap jk <esc>
nnoremap <leader>ev :vsp ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
nnoremap <leader>n :nohl<cr>

nnoremap <leader>1 :!clear<cr>:!make test_suite && ./test_suite<cr>
"remove trailing whitespace with F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
