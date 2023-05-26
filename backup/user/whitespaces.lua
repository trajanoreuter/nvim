-- remove whiteSpaces from line
vim.cmd [[ autocmd BufRead,BufWrite * if ! &bin | silent! %s/ \+$//ge | endif ]]
