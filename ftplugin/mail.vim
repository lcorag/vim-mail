if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

"Settings for writing emails
" Set wrapping text and recognizing lines
set textwidth=72 
set colorcolumn=72
hi ColorColumn ctermbg=green
set formatoptions+=tcqln
set autoindent
set formatlistpat=\\(^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*\\)\\\|\\(^\\s*[*+-]\\s\\+\\)

"Setting spell lang
set spell spelllang=it,en

" Set copy to cliboard on BufferClose
autocmd BufNewFile,BufRead *.mail set filetype=mail

augroup vim_mail
    au!
    au BufWritePost *.mail :silent execute '!cat ' . expand("%:p") . ' | xclip -selection clipboard || wl-copy'
augroup END
