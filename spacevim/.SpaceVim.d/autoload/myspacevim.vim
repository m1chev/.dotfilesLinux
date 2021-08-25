function! myspacevim#before() abort

  nmap <C-o> O<Esc>j
  nmap <Enter> o<esc>k

  let g:deoplete#sources#go#gocode_binary = '~/go/bin/gocode'


endfunction

