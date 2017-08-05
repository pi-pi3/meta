
execute pathogen#infect()

syntax on
filetype plugin indent on

let g:jellybeans_use_term_italics = 1
let g:jellybeans_overrides = {'background': {'ctermbg': 'none',
                                           \ '256ctermbg': 'none',
                                           \ 'guibg': 'none'}}
colorscheme jellybeans

" Options {{{
set expandtab
set number
set autoindent
set cindent
set nowrap
set hlsearch
set incsearch

set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set numberwidth=4
set textwidth=80
set t_Co=256
set iskeyword-=_
set cpoptions+=J

set grepprg=grep\ -nH\ $*
" }}}

" Plugin global state {{{
let g:tex_flavor = "latex"
let g:powerline_pycmd = "py3"
let g:snips_author = "Szymon Walter"
let g:clam_winwidth = 60
let g:gundo_preview_bottom = 1
" }}}

" <Leader> = <space>, <LocalLeader> = \ {{{
let mapleader = " "
let maplocalveader = "\\"
" }}}

" colemak {{{
function Colemak()
    noremap n h
    noremap e j
    noremap i k
    noremap o l
    
    noremap <S-N> <S-H>
    noremap <S-E> <S-J>
    noremap <S-I> <S-K>
    noremap <S-O> <S-L>
    
    noremap <C-N> <C-H>
    noremap <C-E> <C-J>
    noremap <C-I> <C-K>
    noremap <C-O> <C-L>
    
    noremap h n
    noremap j e
    noremap k i
    noremap l o
    
    noremap <S-H> <S-N>
    noremap <S-J> <S-E>
    noremap <S-K> <S-I>
    noremap <S-L> <S-O>
    
    noremap <C-H> <C-N>
    noremap <C-J> <C-E>
    noremap <C-K> <C-I>
    noremap <C-L> <C-O>

    nnoremap <Leader>i :bp<CR>
    nnoremap <Leader>e :bn<CR>

    nnoremap <S-N> ^
    nnoremap <S-O> $

    cnoremap <C-N> <Left>
    cnoremap <C-E> <Down>
    cnoremap <C-I> <Up>
    cnoremap <C-O> <Right>

    onoremap kn( :<C-U>normal! f(vi(<CR>
    onoremap kl( :<C-U>normal! F)vi(<CR>
endfunction
" }}}

" Custom key mappings {{{
" maps {{{
noremap <F2> :retab<CR>
noremap <F3> :set noet<CR>
noremap <S-F3> :set et<CR>

noremap <Leader>fs :NERDTreeToggle<CR>
noremap <Leader>sh :sh<CR>
" perl subst
noremap <Leader>su :perldo s/
" very magic subst
noremap <Leader>vs :%s/\v
"}}}

" nmaps {{{
" edit vimrc
nnoremap <Leader>ev :split $MYVIMRC<CR>
" source vimrc
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>mk :make<CR>
" exec a shell command
nnoremap <Leader>: :Clam 
" semicolon
nnoremap <Leader>sc mmA;<ESC>`m
" split
nnoremap <Leader>sp :execute "leftabove split" bufname("#")<CR>
" Upper
nnoremap <Leader><S-U> viw<S-U>
" trim whitespace
nnoremap <Leader>tw :%s/\v\s+$//g<CR>
" lookup word
nnoremap <Leader>lw :OnlineThesaurusLookup<CR>
" undo
nnoremap <Leader>u :GundoToggle<CR>
" rm current file
nnoremap <Leader>rm :Clam rm <C-R>%<CR>:q<CR>:bd<CR>
" re-open current file
nnoremap <Leader>ro :bd<CR>:e <C-R>#<CR>
" open last buffer
nnoremap <Leader>bp :e <C-R>#<CR>
nnoremap <Leader>k :bp<CR>
nnoremap <Leader>j :bn<CR>
nnoremap <Leader>/ :noh<CR>
nnoremap <Leader>1 :set rnu!<CR>
nnoremap / /\v
nnoremap ? ?\v
nnoremap <S-H> ^
nnoremap <S-L> $
nnoremap <C-Z> <NOP>
nnoremap <CR> o<ESC>
nnoremap <TAB> :ls<CR>:b
nnoremap <S-TAB> :reg<CR>

nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
" }}}

" vmaps {{{
vnoremap <Leader>q <ESC>`>a"<ESC>`<i"<ESC>`>l
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
" }}}

" imaps {{{
inoremap <C-U> <ESC>viw<S-U>i
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
" }}}

" cmaps {{{
cnoremap <C-H> <Left>
cnoremap <C-J> <Down>
cnoremap <C-K> <Up>
cnoremap <C-L> <Right>
" }}}

" some custom motions {{{
onoremap in( :<C-U>normal! f(vi(<CR>
onoremap il( :<C-U>normal! F)vi(<CR>
" }}}
" }}}

" Insert mode abbrevs {{{
iabbrev @@ walter.szymon.98@gmail.com
iabbrev wls@ wls@driftinginyellow.tk
iabbrev diytk driftinginyellow.tk
iabbrev ssig Szymon Walter<CR>walter.szymon.98@gmail.com
" }}}

" autocmd {{{
"autocmd BufRead *.rs :setlocal filetype=rust
" }}}

" FileType configuration {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim iabbrev <buffer> > >#
    autocmd FileType vim iabbrev <buffer> >= >=#
    autocmd FileType vim iabbrev <buffer> < <#
    autocmd FileType vim iabbrev <buffer> <= <=#
    autocmd FileType vim iabbrev <buffer> == ==#
    autocmd FileType vim iabbrev <buffer> != !=#
augroup END

augroup filetype_c
    autocmd!
    autocmd FileType c nnoremap <LocalLeader>c 0i// <ESC>
    autocmd FileType c nnoremap <LocalLeader>x 03x
augroup END

augroup filetype_rust
    autocmd!
    autocmd FileType rust nnoremap <LocalLeader>c 0i// <ESC>
    autocmd FileType rust nnoremap <LocalLeader>x 03x
augroup END

augroup filetype_lua
    autocmd!
    autocmd FileType lua nnoremap <LocalLeader>c 0i-- <ESC>
    autocmd FileType lua nnoremap <LocalLeader>x 03x
augroup END

augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <LocalLeader>c 0i# <ESC>
    autocmd FileType python nnoremap <LocalLeader>x 02x
augroup END

augroup filetype_sh
    autocmd!
    autocmd FileType sh nnoremap <LocalLeader>c 0i# <ESC>
    autocmd FileType sh nnoremap <LocalLeader>x 02x
augroup END

augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <LocalLeader>c 0i<!--<ESC>A><ESC>
    autocmd FileType html nnoremap <LocalLeader>x 04x$x
augroup END

augroup filetype_md
    autocmd!
    autocmd FileType md setlocal spell spelllang=en_gb
augroup END

augroup filetype_tex
    autocmd!
    autocmd FileType tex nnoremap <LocalLeader>c 0i% <ESC>
    autocmd FileType tex nnoremap <LocalLeader>x 02x
    " refresh vim-latex folds
    autocmd FileType tex nnoremap <LocalLeader>rf <Plug>Tex_RefreshFolds
    autocmd FileType tex setlocal spell spelllang=en_gb
    autocmd FileType tex setlocal makeprg=make
    autocmd FileType tex onoremap p i{
augroup END
" }}}

call Colemak()
nohlsearch
