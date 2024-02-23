return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    config.sources = {
      require "typescript.extensions.null-ls.code-actions",
    }

    return config -- return final config table
  end,
}
