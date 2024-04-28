vim.cmd("let g:netrw_liststyle = 3") -- Netrw list style

local opt = vim.opt

opt.relativenumber = true -- Show relative line number
opt.number = true -- Show current line number

-- tabs and identation
opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for
opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true -- Use spaces instead of tabs
opt.autoindent = true -- Copy indent from current line when starting a new line
opt.smartindent = true -- make indenting smarter again

opt.wrap = false -- Do not wrap lines

-- search settings
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- Override 'ignorecase' if the search pattern contains upper case characters
opt.hlsearch = true -- highlight all matches on previous search pattern

-- cursor
opt.cursorline = false -- Highlight the screen line of the cursor with CursorLine

-- turn on terminal colors and bg config
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light org dark will be always dark
opt.signcolumn = "no" -- show sign column so that text does not shift

-- backscape
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard = "unnamedplus" -- use system clipboard

-- split windows
opt.splitbelow = true -- split windows below
opt.splitright = true -- split windows to the right

-- Other configurations
opt.mouse = "a" -- allow the mouse to be used in neovim
opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
opt.smartcase = true -- smart case
opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in milliseconds)
opt.undofile = true -- enable persistent undo
opt.updatetime = 100 -- faster completion (4000ms default)
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.ruler = false
opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
opt.wrap = false -- display lines as one long line
opt.scrolloff = 0
opt.sidescrolloff = 8
