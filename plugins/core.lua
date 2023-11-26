return {
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
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#4C566A",
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        hijack_netrw_behavior = "open_default",
        filtered_items = {
          always_show = { ".gitignore", ".env", ".env.development.local_preconfig", ".config" },
        },
      },
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    lazy = false,
    opts = {
      user_default_options = {
        names = true,
        tailwind = true, -- Enable tailwind colors
      },
    },
  },
}
