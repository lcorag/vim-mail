"Settings for writing emails

" Set wrapping text and recognizing lines
set textwidth=72 
set formatoptions+=tcqln
set autoindent
set formatlistpat=\\(^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*\\)\\\|\\(^\\s*[*+-]\\s\\+\\)

" Set copy to cliboard on BufferClose
autocmd BufNewFile,BufRead *.mail set filetype=mail
au BufWritePost,BufWinLeave,BufLeave,VimLeave *.mail :silent execute '!cat ' . expand("%:p") . ' | xclip -selection clipboard || wl-copy' <CR>
