local null_ls = require 'null-ls'
local builtins = null_ls.builtins

local sources = {

   builtins.formatting.prettierd.with { filetypes = { 'html', 'markdown', 'css' } },

   -- Lua
   builtins.formatting.stylua,
   builtins.diagnostics.luacheck.with { extra_args = { '--global vim' } },

   -- Shell
   builtins.formatting.shfmt,
   builtins.diagnostics.shellcheck.with { diagnostics_format = '#{m} [#{c}]' },

   -- Javascript
   builtins.diagnostics.eslint
}

local M = {}

M.setup = function()
   null_ls.setup {
      debug = true,
      sources = sources,

      -- format on save
      on_attach = function(client)
         if client.server_capabilities.document_formatting then
            vim.cmd 'autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()'
         end
      end,
   }
end

return M
