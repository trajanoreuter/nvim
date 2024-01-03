local M = {
  "phaazon/hop.nvim",
  branch = "v2",
  event = "VeryLazy",
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>fa"] = { "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>", "Find text after"},
    ["<leader>fA"] = { "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>", "Find text before"},
  }

  require("hop").setup {
    keys = "etovxqpdygfblzhckisuran",
  }
end

return M
