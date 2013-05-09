" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
:set complete-=k complete+=k

function! AddItem()
	if searchpair('\\begin{itemize}', '', '\\end{itemize}', '')
		return "\\item "
	else
		return ""
	endif
endfunction

"inoremap <expr><buffer> <CR> "\r".AddItem()
nnoremap <expr><buffer> o "o".AddItem()
nnoremap <expr><buffer> O "O".AddItem()

set autoindent

function! s:ADollar()
	if search('\m\%#\$', 'bcnW')
		if search('\m\_.\+\$', 'nW')
			return "/\\$\<CR>"
		elseif search('\m\$\_.\+\%#', 'bnW')
			return "?\\$\<CR>"
		else
			return "\<C-\>\<C-n>\<Esc>"
		endif
	elseif search('\m\$\%(\%(\$\)\@!\_.\)*\%#\_.\{-}\%(\$\)', 'bcnW')
		return "?\\$\<CR>o/\\$\<CR>"
	endif
	return "\<C-\>\<C-n>\<Esc>"
endfunction

function! s:IDollar()
	let vad = s:ADollar()
	if vad !~ '\m[\x1b]' " If the result contains an <Esc>, not in a dollar
		return vad . 'owoge'
	endif
	return vad
endfunction

vnoremap <expr> a$ <SID>ADollar()
vnoremap <expr> i$ <SID>IDollar()
onoremap a$ :normal va$<CR>
onoremap i$ :normal vi$<CR>
