"<leader> => ,
function! myspacevim#before() abort
    let g:neomake_c_enabled_makers = ['clang']
    " you can defined mappings in bootstrap function
    " for example, use kj to exit insert mode.
    " inoremap kj <Esc>

    nmap <leader>gh :diffget //3
    nmap <leader>gf :diffget //2

    nmap <C-l> :bnext<CR>
    nmap <C-h> :bprev<CR>
  endfunction

function! myspacevim#after() abort
    " you can remove key binding in bootstrap_after function
    " iunmap kj
endfunction

