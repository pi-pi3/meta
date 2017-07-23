
syntax on
filetype on
colorscheme desert

set et
set nu
set ai
set ci
set nowrap
set hls

set ls=2
set ts=3
set sts=4
set sw=4
set nuw=4
set t_Co=256
set iskeyword-=_

set grepprg=grep\ -nH\ $*

let g:tex_flavor = "latex"
let g:powerline_pycmd = "py3"

let mapleader = " "
let maplocalveader = "\\"

noremap <F2> :retab<CR>
noremap <F3> :set noet<CR>
noremap <S-F3> :set et<CR>

noremap <Leader>fs :NERDTreeToggle<CR>
noremap <Leader>sh :sh<CR>
noremap <Leader>su :perldo s/

nnoremap <Leader>/ :noh<CR>
nnoremap <S-H> ^
nnoremap <S-L> $
nnoremap <Leader>ev :split $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>1 :set rnu!<CR>
nnoremap <C-Z> <NOP>
nnoremap <Leader>O O<ESC>
nnoremap <CR> o<ESC>
nnoremap <Leader>u viw<S-U>
nnoremap <Leader>i viwu
nnoremap <Leader>k :bp<CR>
nnoremap <Leader>j :bn<CR>
nnoremap <TAB> :ls<CR>:b
nnoremap <S-TAB> :reg<CR>

nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>

vnoremap <Leader>q <ESC>`>a"<ESC>`<i"<ESC>`>l
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>

inoremap <C-U> <ESC>viw<S-U>i
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>

onoremap p i(
onoremap in( :<C-U>normal! f(vi(<CR>
onoremap il( :<C-U>normal! F)vi(<CR>

iabbrev @@ walter.szymon.98@gmail.com
iabbrev wls@ wls@driftinginyellow.tk
iabbrev diytk driftinginyellow.tk
iabbrev ssig Szymon Walter<CR>walter.szymon.98@gmail.com

au BufRead *.rs :setlocal filetype=rust

aug filetype_c 
    au!
    au FileType c nnoremap <LocalLeader>c 0i// <ESC>
    au FileType c nnoremap <LocalLeader>x 03x
    au FileType c iabbrev <buffer> iff if () {}
    au FileType c iabbrev <buffer> elif else if () {}
aug END

aug filetype_rust 
    au!
    au FileType rust nnoremap <LocalLeader>c 0i// <ESC>
    au FileType rust nnoremap <LocalLeader>x 03x
    au FileType rust iabbrev <buffer> iff if () {}
    au FileType rust iabbrev <buffer> elif else if () {}
aug END

aug filetype_lua 
    au!
    au FileType lua nnoremap <LocalLeader>c 0i-- <ESC>
    au FileType lua nnoremap <LocalLeader>x 03x
    au FileType lua iabbrev <buffer> iff if then end
    au FileType lua iabbrev <buffer> elif elseif end
    au FileType lua iabbrev <buffer> fn() function()
aug END

aug filetype_python 
    au!
    au FileType python nnoremap <LocalLeader>c 0i# <ESC>
    au FileType python nnoremap <LocalLeader>x 02x
aug END

aug filetype_sh 
    au!
    au FileType sh nnoremap <LocalLeader>c 0i# <ESC>
    au FileType sh nnoremap <LocalLeader>x 02x
aug END

aug filetype_html 
    au!
    au FileType html nnoremap <LocalLeader>c 0i<!--<ESC>A><ESC>
    au FileType html nnoremap <LocalLeader>x 04x$x
aug END

aug filetype_tex 
    au!
    au FileType tex nnoremap <LocalLeader>c 0i% <ESC>
    au FileType tex nnoremap <LocalLeader>x 02x
    au FileType tex setlocal spell spelllang=en_gb
    au FileType tex onoremap p i{
aug END

noh
