-- customize mason plugins
return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "tsserver",
        "bashls",
        "marksman",
        "html",
        "jsonls",
        "cssls",
        "tailwindcss",
        "yamlls",
        "pyright",
        "eslint",
        "gopls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "beautysh",
        "shellcheck",
        "stylua",
        "black",
        "isort",
        "prettierd",
        "gofumpt",
        "goimports",
        "codespell",
      },
      handlers = {
        stylelint = function()
          require("null-ls").register(require("null-ls").builtins.diagnostics.stylelint.with {
            condition = function(utils)
              return utils.root_has_file ".stylelintrc.json"
                or utils.root_has_file ".stylelintrc.js"
                or utils.root_has_file ".stylelintrc.yml"
            end,
          })
        end,
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = { "python", "node2", "bash" },
    },
  },
}
