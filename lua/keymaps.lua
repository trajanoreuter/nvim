local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map('n', '<C-n>', ':NvimTreeToggle <CR>', opt)
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
map('n', '<C-p>', ':Files<CR>', opt)
map('n', '<C-f>', ':Ag<space>', opt)
