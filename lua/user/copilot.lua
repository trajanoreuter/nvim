-- use this table to disable/enable filetypes
vim.g.copilot_filetypes = { ["*"] = true }
vim.g.copilot_no_tab_map = true

vim.cmd[[imap <silent><script><expr> <C-i> copilot#Accept("\<CR>")]]
vim.cmd[[highlight CopilotSuggestion guifg=#555555 ctermfg=8]]
vim.cmd[[highlight CopilotSuggestionSelected guifg=#ffffff ctermfg=15]]
