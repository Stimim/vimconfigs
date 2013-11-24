"use Alt+UP, ALT+DOWN to move lines

if v:version < 700
  finish
endif

nnoremap <M-UP>   :m-2<CR>==
nnoremap <M-DOWN> :m+<CR>==

inoremap <M-UP>   <Esc>:m-2<CR>==gi
inoremap <M-DOWN> <Esc>:m+<CR>==gi

vnoremap <M-UP>   :m-2<CR>gv=gv
vnoremap <M-DOWN> :m'>+<CR>gv=gv

" remove trailing spaces
au BufWrite *.c       call RemoveTrailingSpaces()
au BufWrite *.cpp     call RemoveTrailingSpaces()
au BufWrite *.java    call RemoveTrailingSpaces()
au BufWrite *.lua     call RemoveTrailingSpaces()

function! RemoveTrailingSpaces()
  let saved_pos = getpos(".")
  %s/\s\+$//ge
  call setpos('.', saved_pos)
endfunction

" vim:set ft=vim et sw=2 sts=2:
