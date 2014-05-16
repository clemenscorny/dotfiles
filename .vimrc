execute pathogen#infect()

runtime! plugin/sensible.vim

inoremap <Tab> <C-X><C-F>
:imap jk <ESC>
nmap K i<CR><Esc>k$
nmap <C-i> o<Esc>k
nmap <C-o> O<Esc>j
nnoremap ; :
nnoremap : ;
noremap Y y$

filetype plugin on
filetype indent on
 
:colorscheme ron

set wildmenu
set wildmode=longest,list
set ignorecase
set incsearch
set nofoldenable
set number
set splitright
set directory=/tmp
set undodir=/tmp " where to save undo histories
set undofile                " Save undo's after file closes

set tabstop=4
set shiftwidth=4
set expandtab

"Overrides sensible.vim
set laststatus=1
set noshowcmd
set scrolloff=2

let g:Imap_UsePlaceHolders = 0
let g:pandoc_use_conceal=0

highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%100v.\+/

" I haven't found how to hide this function (yet)
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction

function! s:Repl()
    let s:restore_reg = @"
    return "p@=RestoreRegister()\<cr>"
endfunction

" NB: this supports "rp that replaces the selection by the contents of @r
vnoremap <silent> <expr> p <sid>Repl()
