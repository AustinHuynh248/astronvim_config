return {
  "lukas-reineke/headlines.nvim",
  dependencies = "nvim-treesitter/nvim-treesitter",
  ft = { "markdown", "yaml" },
  config = function()
    require("headlines").setup {
      markdown = { headline_highlights = { "Headline" } },
    }
  end,
}
