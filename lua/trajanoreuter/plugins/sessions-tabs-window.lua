return {
  {
    "rmagatti/auto-session",
    config = function()
      local auto_session = require("auto-session")

      auto_session.setup({
        auto_restore_enabled = false,
        auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
      })

      local wk = require("which-key")
      wk.register({
        ["<leader>tr"] = { "<cmd>SessionRestore<CR>", "Restore session for cwd" },
        ["<leader>ts"] = { "<cmd>SessionSave<CR>", "Save session for cwd" },
        -- Window management
        ["<leader>tv"] = { "<C-w>v", "Split window vertically" },
        ["<leader>th"] = { "<C-w>s", "Split window horizontally" },
        ["<leader>te"] = { "<C-w>=", "Equalize window sizes" },
        ["<leader>twx"] = { "<cmd>close<CR>", "Close current split window" },
        ["<leader>tho"] = { "<C-w>o", "Close all windows except current" },
        ["<leader>thq"] = { "<cmd>q<CR>", "Close current window" },
        -- Tab management
        ["<leader>to"] = { "<cmd>tabnew<CR>", "Open new tab" },
        ["<leader>tx"] = { "<cmd>tabclose<CR>", "Close current tab" },
        ["<leader>tn"] = { "<cmd>tabn<CR>", "Next tab" },
        ["<leader>tp"] = { "<cmd>tabp<CR>", "Previous tab" },
        ["<leader>tf"] = { "<cmd>tabnew %<CR>", "Open current buffer in new tab" },
      })
    end,
  },
  {
    "szw/vim-maximizer",
    keys = {
      { "<leader>tm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
    },
  },
}
