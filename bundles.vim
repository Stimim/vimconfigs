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
map <C-o> :NERDTreeToggle<CR>

Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/STL-Syntax'

Bundle 'bling/vim-airline'

Bundle 'scrooloose/nerdcommenter'

Bundle 'vim-scripts/gtags.vim'

" color schemes
" Bundle 'Lokaltog/vim-distinguished'

filetype plugin indent on

