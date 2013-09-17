execute pathogen#infect()

runtime! plugin/sensible.vim
runtime! plugin/jedi.vim

inoremap <Tab> <C-X><C-F>
:imap jk <ESC>
nmap K i<CR><Esc>k$
nmap <C-o> o<Esc>k
nmap <C-i> O<Esc>j
nnoremap ; :
nnoremap : ;

filetype plugin on
filetype indent on
 
:colorscheme ron

set wildmenu
set wildmode=longest,list
set ignorecase
set incsearch
set nofoldenable
set nu
set noswapfile

"Overrides sensible.vim
set noundofile
set laststatus=1
set noshowcmd
set scrolloff=2

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'

highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%100v.\+/

