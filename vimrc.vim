set nocompatible

source ~/.vim/stimim/bundles.vim

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

autocmd BufNewFile *.cpp 0r ~/.vim/stimim/templates/cpp.tpl
autocmd BufNewFile *.c 0r ~/.vim/stimim/templates/c.tpl
autocmd BufNewFile *.tex 0r ~/.vim/stimim/templates/tex.tpl
autocmd BufNewFile *.py 0r ~/.vim/stimim/templates/py.tpl
autocmd BufNewFile *.rb 0r ~/.vim/stimim/templates/rb.tpl

autocmd FileType make setlocal noexpandtab

set t_Co=256
set bg=dark
"colorscheme distinguished

if $TERM == 'screen'
  set term=xterm
  " Fix keycodes
  map [1~ <Home>
  map [4~ <End>
  imap [1~ <Home>
  imap [4~ <End>
endif

if $TERM == 'linux'
  set t_Co=8
endif

" highlight search
set hls

map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h

let mapleader = ","
