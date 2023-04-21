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
        "yamlls",
        "pyright",
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
        "stylua",
        "eslint_d",
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
