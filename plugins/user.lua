return {
  { "christoomey/vim-tmux-navigator" },
  { "mtdl9/vim-log-highlighting", ft = "log" },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
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
