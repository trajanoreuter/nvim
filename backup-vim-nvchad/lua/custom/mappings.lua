local map = require('core.utils').map
local opt = { noremap = true, silent = true }

-- telescope
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", opt)
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", opt)
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", opt)
map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", opt)
map('n', '<C-f>', "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", opt)

-- truezen
-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>", opt)
map("n", "<S-h>", ":bprevious<CR>", opt)

-- Move text up and down
map("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opt)
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opt)

-- Insert --
-- Press jk fast to enter
map("i", "jk", "<ESC>", opt)

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- Move text up and down
map("v", "<A-j>", ":m .+1<CR>==", opt)
map("v", "<A-k>", ":m .-2<CR>==", opt)
map("v", "p", '"_dP', opt)

-- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv", opt)
map("x", "K", ":move '<-2<CR>gv-gv", opt)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", opt)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", opt)

map("n", "<leader>d", '"_d', opt)
map("x", "<leader>d", '"_d', opt)
map("x", "<leader>p", '"_d', opt)

