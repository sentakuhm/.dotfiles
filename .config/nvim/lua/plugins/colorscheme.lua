return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- Bufferline
  -- {
  --   "akinsho/bufferline.nvim",
  --   dependencies = { "echasnovski/mini.icons" },
  --   config = function()
  --     require("bufferline").setup({
  --       options = {
  --         separator_style = "slant", -- Style for separator between buffers
  --       },
  --     })
  --   end,
  -- },

  -- LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        local tokyonight = require("tokyonight")
        tokyonight.setup({
          style = "night",
          on_colors = function(c)
            c.border = c.terminal_black
          end,
        })
        return tokyonight.load()
      end,
    },
  },

  -- Neo-Tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 25, -- Set Neo-tree width to 35 columns
      },
    },
  },

  -- Make terminal float
  -- {
  --   "folke/snacks.nvim",
  --   opts = {
  --     terminal = {
  --       win = {
  --         position = "float",
  --       },
  --     },
  --   },
  -- },
}
