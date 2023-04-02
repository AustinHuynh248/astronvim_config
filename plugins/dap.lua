return {
  "mfussenegger/nvim-dap",
  dependencies = {
    { "theHamsta/nvim-dap-virtual-text", config = true },
  },
  config = function()
    local dap = require "dap"

    dap.adapters.node = {
      type = "executable",
      command = "node-debug2-adapter",
      name = "node debug",
    }
    -- read .vscode/launch.json
    require("dap.ext.vscode").load_launchjs(
      nil,
      { node = { "javascript", "javascriptreact", "typescriptreact", "typescript" } }
    )
  end,
}
