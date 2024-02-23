return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    {
      "Exafunction/codeium.nvim",
      config = function() require("codeium").setup {} end,
    },
  },
  opts = function(_, opts)
    opts.formatting.format = require("lspkind").cmp_format {
      mode = "symbol",
      maxwidth = 50,
      ellipsis_char = "...",
      symbol_map = { Codeium = "" },
    }

    local cmp = require "cmp"
    -- modify the sources part of the options table
    opts.sources = cmp.config.sources {
      { name = "codeium", priority = 1000 },
      { name = "nvim_lsp", priority = 750 },
      { name = "luasnip", priority = 725 },
      { name = "buffer", priority = 500 },
      { name = "path", priority = 250 },
    }

    -- return the new table to be used
    return opts
  end,
}
