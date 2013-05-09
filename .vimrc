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
inoremap <Tab> <C-X><C-F>
set ignorecase
set incsearch

set nofoldenable

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'

highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%100v.\+/

