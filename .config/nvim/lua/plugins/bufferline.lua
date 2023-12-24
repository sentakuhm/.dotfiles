return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        separator_style = "thick", -- | "thick" | "thin" | { 'any', 'any' },
        color_icons = true,
        always_show_bufferline = true,
      },

      highlights = {
        background = {
          italic = true,
        },
        buffer_selected = {
          bold = true,
        },
      },
    },
  },
}
