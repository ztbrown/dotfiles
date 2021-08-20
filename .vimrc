set nocompatible
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"start plugins
"
"Plugin 'avakhov/vim-yaml'
"Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
"Plugin 'maxmellon/vim-jsx-pretty'
"Plugin 'tarekbecker/vim-yaml-formatter'
"
""end plugins

set visualbell

call vundle#end()
filetype plugin indent on

syntax on
let mapleader = "," 
color koehler
set tabstop=2
set shiftwidth=2
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
    set noexpandtab
else
    set expandtab
endif
set number
inoremap jk <esc>
nnoremap <leader>ev :vsp ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>

map <leader>y :screen -r<cr>

nnoremap <leader>1 :!clear<cr>:!make test_suite && ./test_suite<cr>
"remove trailing whitespace with F5
"nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
