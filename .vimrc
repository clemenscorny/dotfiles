execute pathogen#infect()

runtime! plugin/sensible.vim

colorscheme ron

filetype plugin on
filetype indent on

inoremap <Tab> <C-X><C-F>
imap jk <ESC>
nmap K i<CR><Esc>k$
nmap <C-i> o<Esc>k
nmap <C-o> O<Esc>j
nnoremap ; :
nnoremap : ;
noremap Y y$
inoremap <expr> <Nul> Auto_complete_string()
inoremap <expr> <C-Space> Auto_complete_string()
vnoremap <silent> <expr> p <sid>Repl()

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
set nowritebackup
set tabstop=4
set shiftwidth=4
set expandtab

"Overrides sensible.vim
set laststatus=1
set noshowcmd
set scrolloff=2

let g:pandoc_use_conceal=0
let g:syntastic_python_checkers = ['pyflakes']

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


function! Auto_complete_string()
    if pumvisible()
        return "\<C-n>"
    else
        return "\<C-x>\<C-o>\<C-r>=Auto_complete_opened()\<CR>"
    end
endfunction

function! Auto_complete_opened()
    if pumvisible()
        return "\<Down>"
    end
    return ""
endfunction
