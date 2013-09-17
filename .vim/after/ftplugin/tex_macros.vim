call IMAP('EFI', "\\begin{figure}\<CR>\\centering\<CR>\\includegraphics[width=<++>\\linewidth]{<++>}\<CR>\\caption{<++>}\<CR>\\label{fig:<++>}\<CR>\\end{figure}<++>", 'tex')
call IMAP('EFE', "\\begin{frame}\<CR>\\frametitle{<++>}\<CR><++>\<CR>\\end{frame}<++>", 'tex')
call IMAP('ECO', "\\begin{columns}\<CR>\\begin{column}{.5\\linewidth}\<CR><++>\<CR>\\end{column}\<CR>\\begin{column}{.5\\linewidth}\<CR><++>\<CR>\\end{column}\<CR>\\end{columns}<++>", 'tex')

