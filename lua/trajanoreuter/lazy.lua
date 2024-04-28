-- Load lazy.nvim if it's not installed ref: https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Load the plugin
require("lazy").setup({
  { import = "trajanoreuter.plugins" },
  { import = "trajanoreuter.plugins.lsp" },
}, {
  change_detection = {
    notify = false
  },
  checker = {
    enabled = true,
    notify = false,
  },
})
