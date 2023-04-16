return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettierd.with {
        filetypes = {
          "typescriptreact",
          "handlebars",
          "graphql",
          "less ",
          "markdown.mdx",
          "vue",
          "scss",
          " json",
          "jsonc",
          "yaml",
          "css",
          "html",
          "markdown",
          "javascriptreact",
          "javascriptreact",
          "vue",
        },
      },
      null_ls.builtins.formatting.eslint_d.with {
        filetypes = { "javascriptreact", "typescript", "javascript", "typescriptreact", "vue" },
      },
      require "typescript.extensions.null-ls.code-actions",
    }
    return config -- return final config table
  end,
}
