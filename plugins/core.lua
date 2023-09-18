local get_icon = require("astronvim.utils").get_icon

return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    enabled = false,
  },
  { "max397574/better-escape.nvim", enabled = false },
  { "mfussenegger/nvim-dap", dependencies = {
    { "theHamsta/nvim-dap-virtual-text", config = true },
  } },
  { "akinsho/toggleterm.nvim", opts = {
    terminal_mappings = false,
  } },
  {
    "sindrets/diffview.nvim",
    event = "User AstroGitFile",
    cmd = { "DiffviewOpen" },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        hijack_netrw_behavior = "open_default",
        filtered_items = {
          always_show = { ".github", ".gitignore", ".env", ".env.development.local_preconfig", ".config" },
        },
      },
    },
  },
}
