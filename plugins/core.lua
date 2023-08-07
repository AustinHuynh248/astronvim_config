local get_icon = require("astronvim.utils").get_icon

return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        [[ ___  __     ________    ________   ________   ___  __            ________   ________           ___   ___       ]],
        [[|\  \|\  \  |\   ___  \ |\   __  \ |\   ____\ |\  \|\  \         |\   __  \ |\   ___  \        |\  \ |\  \      ]],
        [[\ \  \/  /|_\ \  \\ \  \\ \  \|\  \\ \  \___| \ \  \/  /|_       \ \  \|\  \\ \  \\ \  \       \ \  \\ \  \     ]],
        [[ \ \   ___  \\ \  \\ \  \\ \  \\\  \\ \  \     \ \   ___  \       \ \  \\\  \\ \  \\ \  \       \ \  \\ \  \    ]],
        [[  \ \  \\ \  \\ \  \\ \  \\ \  \\\  \\ \  \____ \ \  \\ \  \       \ \  \\\  \\ \  \\ \  \       \ \__\\ \__\   ]],
        [[   \ \__\\ \__\\ \__\\ \__\\ \_______\\ \_______\\ \__\\ \__\       \ \_______\\ \__\\ \__\       \|__| \|__|   ]],
        [[    \|__| \|__| \|__| \|__| \|_______| \|_______| \|__| \|__|        \|_______| \|__| \|__|           ___   ___ ]],
        [[                                                                                                     |\__\ |\__\]],
        [[                                                                                                     \|__| \|__|]],
      }
      return opts
    end,
  },
  { "max397574/better-escape.nvim", enabled = false },
  { "mfussenegger/nvim-dap", dependencies = {
    { "theHamsta/nvim-dap-virtual-text", config = true },
  } },
  { "akinsho/toggleterm.nvim", opts = {
    terminal_mappings = false,
  } },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signcolumn = false,
      numhl = true,
      current_line_blame_opts = { ignore_whitespace = true },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        hijack_netrw_behavior = "open_default",
        filtered_items = {
          always_show = { ".github", ".gitignore" },
        },
      },
    },
  },
}
