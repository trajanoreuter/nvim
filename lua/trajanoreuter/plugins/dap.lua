return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "theHamsta/nvim-dap-virtual-text",
    "leoluz/nvim-dap-go",
  },
  config = function()
    local dapui = require("dapui")
    local dapgo = require("dap-go")
    local dap = require("dap")

    dapui.setup()
    dapgo.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    local keymap = vim.keymap -- for conciseness

    -- keymap to toogle dap breakpoints
    keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "DAP Breakpoint Toggle" })
    -- keymap to dap continue
    keymap.set("n", "<leader>dc", dap.continue, { desc = "DAP Continue" })
    -- keymap to toogle dap ui
    keymap.set("n", "<leader>du", dapui.toggle, { desc = "DAP UI Toggle" })
  end,
}
