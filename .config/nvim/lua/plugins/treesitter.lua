return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "bash",
          "comment",
          "diff",
          "git_config",
          "git_rebase",
          "http",
          "javascript",
          "make",
          "markdown",
          "markdown_inline",
          "proto",
          "rust",
          "html",
          "css",
          "json",
          "lua",
          "go",
          "gomod",
          "c",
          "ninja",
          "python",
          "rst",
          "toml",
          "typescript",
          "vim",
          "yaml",
        })
      end
    end,
  },

  -- https://github.com/nvim-treesitter/nvim-treesitter-context
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },

  -- python formatting with black
  -- Add `pyright` to mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "pyright", "black" })
    end,
  },
}
