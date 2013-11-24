set nocompatible
filetype off  " required by vundle

set rtp+=~/.vim/bundle/vundle
set rtp+=~/.vim/stimim

call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-sensible'

Bundle 'Lokaltog/vim-easymotion'

Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/STL-Syntax'

" color schemes
" Bundle 'Lokaltog/vim-distinguished'

filetype plugin indent on

