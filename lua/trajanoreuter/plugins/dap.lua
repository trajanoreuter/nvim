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

    local wk = require("which-key")
    wk.register({
      ["<leader>dt"] = { dap.toggle_breakpoint, "DAP Breakpoint Toggle" },
      ["<leader>dc"] = { dap.continue, "DAP Continue" },
      ["<leader>du"] = { dapui.toggle, "DAP UI Toggle" },
    })
  end,
}
