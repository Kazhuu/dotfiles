" Python PEP8 file settings.
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent

" Keys to set breakpoints when file is a Python file.
nnoremap <buffer> <silent> <leader>b oimport ipdb; ipdb.set_trace()<esc>
nnoremap <buffer> <silent> <leader>B Oimport ipdb; ipdb.set_trace()<esc>
