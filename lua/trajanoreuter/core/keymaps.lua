vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
--local wk = require("which-key")

-- Increment and decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number under cursor" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number under cursor" })

-- Lsp Hover Doc Scrolling
keymap.set({ "n", "i", "s" }, "<c-f>", function()
  if not require("noice.lsp").scroll(4) then
    return "<c-f>"
  end
end, { silent = true, expr = true })

keymap.set({ "n", "i", "s" }, "<c-b>", function()
  if not require("noice.lsp").scroll(-4) then
    return "<c-b>"
  end
end, { silent = true, expr = true })

-- Enable visual mode to preserve selection after indenting
keymap.set("v", "<", "<gv", { noremap = true, silent = true })
keymap.set("v", ">", ">gv", { noremap = true, silent = true })
