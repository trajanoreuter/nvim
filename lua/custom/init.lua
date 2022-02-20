local cmd = vim.cmd
local g = vim.g
local set = vim.opt

require 'custom.mappings'

-- remove whiteSpaces from line
cmd [[ autocmd BufRead,BufWrite * if ! &bin | silent! %s/ \+$//ge | endif ]]

g.UltiSnipsEditSplit = 'vertical'
g.UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

set.smartindent = true
set.hidden = true
set.number = true
set.relativenumber = true
set.mouse = 'a'
set.inccommand = 'split'
set.clipboard = 'unnamed'
set.hidden = true
set.termguicolors = true
set.expandtab = true
set.shiftwidth = 2
set.smarttab = true
set.cindent = true
set.tabstop = 2
set.updatetime = 300
set.shortmess:append {c = true}
set.signcolumn = 'yes'
set.termguicolors = true
