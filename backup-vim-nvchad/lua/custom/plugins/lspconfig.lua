local M = {}

local opt = { noremap = true, silent = true }

local attach = function(_, bufnr)
   local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
   buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
   buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
   buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
   buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
   buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
   buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
   buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.ioptpect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
   buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
   buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opt)
   buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opt)
   buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opt)
   buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opt)
   buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
end

M.setup_lsp = function(_, capabilities)
   local lsp_installer = require('nvim-lsp-installer')

   lsp_installer.settings {
      ui = {
         icons = {
            server_installed = '﫟' ,
            server_pending = '',
            server_uninstalled = '✗',
         },
      },
   }

   lsp_installer.on_server_ready(
      function(server)
         local default = {
            on_attach = attach,
            capabilities = capabilities,
            flags = {
               debounce_text_changes = 150,
            },
            settings = {},
         }

         local tsserver = {
            on_attach = function(client, bufnr)
               client.server_capabilities.document_formatting = false
               vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
            end,
            capabilities = capabilities,
            flags = {
               debounce_text_changes = 150,
            },
            settings = {},
         }

         if server == 'tsserver' then
            server:setup(tsserver)
         end

         server:setup(default)
         vim.cmd [[ do User LspAttachBuffers ]]
      end
   )
end

return M
