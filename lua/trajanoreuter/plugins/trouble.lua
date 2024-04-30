return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
  config = function()
    local trouble = require("trouble")
    trouble.setup()

    local wk = require("which-key")

    wk.register({
      ["<leader>xx"] = { "<cmd>TroubleToggle<CR>", "Open/close trouble list" },
      ["<leader>xw"] = { "<cmd>TroubleToggle workspace_diagnostics<CR>", "Open trouble workspace diagnostics" },
      ["<leader>xd"] = { "<cmd>TroubleToggle document_diagnostics<CR>", "Open trouble document diagnostics" },
      ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<CR>", "Open trouble quickfix list" },
      ["<leader>xl"] = { "<cmd>TroubleToggle loclist<CR>", "Open trouble location list" },
      ["<leader>xt"] = { "<cmd>TodoTrouble<CR>", "Open todos in trouble" },
    })
  end,
}
