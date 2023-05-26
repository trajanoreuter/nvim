local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.lsp-installer"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
require('user.lsp.yamlls').setup(on_attach)
require('user.lsp.terraformls').setup(on_attach)
require('user.lsp.tflint').setup(on_attach)
require('user.lsp.bashls').setup(on_attach)
