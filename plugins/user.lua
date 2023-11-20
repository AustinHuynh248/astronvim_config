return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "rmehri01/onenord.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      disable = {
        background = true, -- Disable setting the background color
      },
    },
  },
  { "christoomey/vim-tmux-navigator" },
  { "mtdl9/vim-log-highlighting", ft = "log" },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function() require("spectre").setup() end,
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function() end,
  },
  {
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    opts = {
      ignore_lsp = { "lua_ls", "julials" },
    },
    config = function(_, opts) require("project_nvim").setup(opts) end,
  },
  {
    "danymat/neogen",
    cmd = "Neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
  },
  {
    "folke/todo-comments.nvim",
    event = "User AstroFile",
    cmd = { "TodoTrouble", "TodoTelescope", "TodoLocList", "TodoQuickFix" },
    opts = {},
  },
  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    opts = {
      use_diagnostic_signs = true,
      action_keys = {
        close = { "q", "<esc>" },
        cancel = "<c-e>",
      },
    },
  },
  {
    "ellisonleao/glow.nvim",
    cmd = "Glow",
    config = function()
      require("glow").setup {
        style = "dark",
        width = 120,
      }
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
}
