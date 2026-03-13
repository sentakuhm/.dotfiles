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
}
