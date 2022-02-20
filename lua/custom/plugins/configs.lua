local M = {}

-- overriding default plugin configs!
M.treesitter = {
   ensure_installed = 'maintained',
   highlight = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    rainbow = {
      enable = true,
    },
}

M.nvimtree = {
   git = {
      enable = true,
   },
}

return M
