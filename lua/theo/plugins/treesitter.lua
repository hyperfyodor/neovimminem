return {
  "nvim-treesitter/nvim-treesitter",
  event = {"BufReadPre", "BufNewFile"},
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },

  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
      },

      indent = {enable = true},

      autotag = {enable = true},

      ensure_installed = {
        "json",
        "yaml",
        "markdown",
        "markdown_inline",
        "bash",
        "lua",
        "dockerfile",
        "vim",
        "gitignore",
        "c",
        "cmake",
        "cpp",
        "go",
        "gomod",
        "gosum",
        "hocon",
        "http",
        "java",
        "latex",
        "make",
        "proto",
        "regex",
        "rust",
        "scala",
        "sql",
        "terraform",
        "toml",
        "python",
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-i>",
          node_incremental = "<C-i>",
          scope_incremntal = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,

}
