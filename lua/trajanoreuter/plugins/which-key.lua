return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {},
  config = function()
    local mappings = {
      w = { "<cmd>w!<CR>", "Save" },
      q = { "<cmd>confirm q<CR>", "Quit" },
      h = { "<cmd>nohlsearch<CR>", "NOHL" },
      [";"] = { "<cmd>tabnew | terminal<CR>", "Term" },
      g = { name = "Git" },
      d = { name = "DAP" },
      e = { name = "NvimTree" },
      t = { name = "Tab and Window management" },
      f = { name = "TeleScope" },
      x = { name = "Trouble" },
    }

    local which_key = require("which-key")
    which_key.setup({
      plugins = {
        marks = true,
        registers = true,
        spelling = {
          enabled = true,
          suggestions = 20,
        },
        presets = {
          operators = false,
          motions = false,
          text_objects = false,
          windows = false,
          nav = false,
          z = false,
          g = false,
        },
      },
      window = {
        border = "rounded",
        position = "bottom",
        padding = { 2, 2, 2, 2 },
      },
      ignore_missing = true,
      show_help = false,
      show_keys = false,
      disable = {
        buftypes = {},
        filetypes = { "TelescopePrompt" },
      },
    })

    local opts = {
      mode = "n", -- NORMAL mode
      prefix = "<leader>",
    }

    which_key.register(mappings, opts)
  end,
}
