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
        "eslint",
        "gopls",
        "emmet_ls",
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
