execute pathogen#infect()

runtime! plugin/sensible.vim

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
inoremap <Tab> <C-X><C-F>

:imap jk <ESC>

nmap K i<CR><Esc>k$
nmap <C-Enter> O<Esc>
nmap <S-Enter> o<Esc>

nnoremap ; :

filetype plugin on
filetype indent on
 
:colorscheme ron

set wildmenu
set wildmode=longest,list
set ignorecase
set incsearch
set nofoldenable
set nu

"Overrides sensible.vim
set noundofile
set laststatus=1
set noruler
set noshowcmd
set scrolloff=2

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'

highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%100v.\+/

