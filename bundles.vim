set nocompatible
filetype off  " required by vundle

set rtp+=~/.vim/bundle/vundle
set rtp+=~/.vim/stimim

call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'

" Plugin 'Lokaltog/vim-easymotion'

Plugin 'hallison/vim-markdown'

Plugin 'scrooloose/nerdtree'
map <C-o> :NERDTreeToggle<CR>

Plugin 'Valloric/YouCompleteMe'
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_autoclose_preview_window_after_completion=1

Plugin 'vim-scripts/STL-Syntax'

Plugin 'bling/vim-airline'

Plugin 'scrooloose/nerdcommenter'

Plugin 'vim-scripts/gtags.vim'
"Plugin 'vim-scripts/LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'vim-scripts/haskell.vim'

Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<F2>"
let g:UltiSnipsListSnippets="<F3>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" color schemes
" Plugin 'Lokaltog/vim-distinguished'

call vundle#end()

filetype plugin indent on

