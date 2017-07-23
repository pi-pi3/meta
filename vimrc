set ts=4
set sts=4
set sw=4
set et
set nu
set ai
set ci
set t_Co=256
set iskeyword-=_
syntax on
filetype on
colorscheme desert

let mapleader = "\\"
let maplocalleader = "\\"

nmap <C-Z> :wa<CR>
nmap <C-S> :w<CR>
map <C-Z> z
noremap <F2> :retab <CR>
noremap <S-F3> :set et<CR>
noremap <F3> :set noet<CR>
nnoremap <C-o> O<ESC>
nnoremap <CR> o<ESC>
nnoremap <C-k> :bp<CR>
nnoremap <C-j> :bn<CR>
nnoremap <TAB> :buffers<CR>:b
nnoremap <Leader>a 0i/*<ESC>
nnoremap <Leader>s 0i *<ESC>
nnoremap <Leader>d A*/<ESC>
nnoremap <Leader>b 0i/*<CR> *<CR>*/<ESC>
nnoremap <Leader>c 0i/*<ESC>A*/<ESC>
nnoremap <Leader>x 02x$h2x
nnoremap <Leader>/ a/* */<ESC>
nnoremap <Leader><CR> A<CR>*<ESC>

call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'vim-gdscript'

call plug#end()

