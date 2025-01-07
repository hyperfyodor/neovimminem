return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },

  config = function()
    local mason_tool_installer = require("mason-tool-installer")
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "bashls",
        "cmake",
        "dockerls",
        "gopls",
        "html",
        "jsonls",
        "ltex",
        "vacuum",
        "pbls",
        "pylsp",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "sqlfluff",
        "golangci-lint",
        "typos",
        "shellcheck",
      },
    })
  end,
}
