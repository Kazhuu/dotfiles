setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal textwidth=80

" Copy current line as a breakpoint line to + register that can be just pasted
" to gdb.
nnoremap <buffer> <silent> <leader>b :execute "let @+='b ".expand('%:p').":".getpos('.')[1]."'"<cr>:echo "filename copied: ".@*<cr>
