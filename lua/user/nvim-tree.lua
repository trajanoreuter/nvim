local g = vim.g
g.loaded = 1
g.loaded_netrwPlugin = 1

-- g.nvim_tree_icons = {
--   default = "",
--   symlink = "",
--   git = {
--     deleted = "",
--     ignored = "◌",
--     renamed = "➜",
--     staged = "✓",
--     unmerged = "",
--     unstaged = "✗",
--     untracked = "★",
--   },
--   folder = {
--     default = "",
--     open = "",
--     empty = "",
--     empty_open = "",
--     symlink = "",
--   },
-- }

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
}
