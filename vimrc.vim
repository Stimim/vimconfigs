set nocompatible

source ~/.vim/stimim/bundles.vim

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

autocmd BufNewFile *.cpp 0r ~/.vim/templates/cpp.tpl
autocmd BufNewFile *.c 0r ~/.vim/templates/c.tpl
autocmd BufNewFile *.tex 0r ~/.vim/templates/tex.tpl
autocmd BufNewFile *.py 0r ~/.vim/templates/py.tpl
autocmd BufNewFile *.rb 0r ~/.vim/templates/rb.tpl

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
