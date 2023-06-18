return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "echasnovski/mini.nvim",
    event = "BufEnter",
    config = function()
      local timing = { timing = require("mini.animate").gen_timing.linear { duration = 67, unit = "total" } }
      require("mini.animate").setup {
        cursor = { timing = require("mini.animate").gen_timing.linear { duration = 125, unit = "total" } },
        scroll = timing,
        resize = timing,
        open = timing,
        close = timing,
      }
      require("mini.animate").setup()
    end,
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
    opts = {
      snippet_engine = "luasnip",
      languages = {
        lua = { template = { annotation_convention = "ldoc" } },
        javacript = { template = { annotation_convention = "jsdoc" } },
        typescript = { template = { annotation_convention = "jsdoc" } },
        typescriptreact = { template = { annotation_convention = "tsdoc" } },
      },
    },
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
}
