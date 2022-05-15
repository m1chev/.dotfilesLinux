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

    " set langmap='q,\\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,s\\;,-',\\;z,qx,jc,kv,xb,bn,mm,w\\,,v.,z/,[-,]=,\"Q,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\",:Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?

endfunction

function! myspacevim#after() abort
    " you can remove key binding in bootstrap_after function
    " iunmap kj
endfunction

