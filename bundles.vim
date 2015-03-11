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

" Plugin 'Valloric/YouCompleteMe'
" let g:ycm_key_list_previous_completion=['<Up>']
" let g:ycm_autoclose_preview_window_after_completion=1

Plugin 'Shougo/neocomplete.vim'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

Plugin 'Shougo/vimproc.vim'
Plugin 'osyo-manga/vim-reunions'

Plugin 'osyo-manga/vim-marching'
let g:marching_clang_command = "/usr/bin/clang"
let g:marching#clang_command#options = {
      \   "cpp" : "-std=gnu++1y"
      \}
let g:marching_enable_neocomplete = 1
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#force_omni_input_patterns.cpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
set updatetime=200

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

