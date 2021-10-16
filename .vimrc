set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'avakhov/vim-yaml'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'tarekbecker/vim-yaml-formatter'
Plugin 'wincent/command-t'

call vundle#end()
filetype plugin indent on
set visualbell

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

"remove trailing whitespace with F5
"nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
