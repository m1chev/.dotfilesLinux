let g:coc_disable_startup_warning = 1

syntax on
filetype plugin indent on
set noswapfile
set nofixeol
" set clipboard=unnamedplus

let mapleader = " "
" set so=7

" set lines=48 columns=150

"navigate between windows
nnoremap <C-k> <C-W>k
nnoremap <C-j> <C-W>j
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h

"add new lines up/d stay Normal mode
nnoremap <leader>j m`o<Esc>``
nnoremap <leader>k m`O<Esc>``

"keeps the selected text in Visual mode
:vnoremap < <gv
:vnoremap > >gv


"____________________

set belloff=all     "no sound beeping"
set smartindent     "identify autocomplete
set nowrap          "dont breack long lines
set incsearch       "see results while searching
"let g:netrw_banner = 0

set nu              "column with numbers
"turn hybrid line numbers on
:set number relativenumber
:set nu rnu

set tabstop=4       "show existing tab with 4 spaces width
set shiftwidth=4    "when indenting with '>', use 4 spaces width
set expandtab       "On pressing tab, insert 4 spaces

"_____________________

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Run in Terminal the line below:
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"run :PlugInstall
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
" to see word suggestions press <leader>aw
Plug 'neoclide/coc.nvim', {'branch': 'release'}         ":CocInstall coc-json coc-tsserver coc-spell-checker coc-angular
Plug 'vim-airline/vim-airline'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
" Plug 'turbio/bracey.vim'    ":Bracey  :BraceyReload :BraceyStop:

call plug#end()

"mapping for Plug
nnoremap <leader>u :UndotreeToggle<cr>
nnoremap <C-f> :Files<CR>
nnoremap <C-b> :Buffers<CR>
inoremap <C-f> <Esc><Esc>:BLines!<CR>

" autocmd vimenter * NERDTree
let NERDTreeWinSize = 30
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \ }
set laststatus=2 "lightline will work also on single window
set noshowmode
set background=dark
colorscheme gruvbox

let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

nmap <leader>gs :G<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

set updatetime=300

noremap <leader>/ :Commentary<cr>
nnoremap tn :tabnew<CR>

" Remap keys for applying codeAction to the current buffer.
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
"_____________________
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
"____________________

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"" Use <c-space> to trigger completion.
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif

"_____________________"
