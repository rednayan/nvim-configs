-- ~/.config/nvim/lua/plugins/colorscheme.lua

return {
  -- Add and configure the Tokyonight plugin
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night", -- or 'storm', 'night', 'day'
      transparent = true, -- <--- SET THIS TO TRUE
      styles = {
        sidebars = "transparent", -- make sidebars transparent
        floats = "transparent", -- make floating windows transparent
      },
    },
  },

  -- Configure the core LazyVim plugin to use the new colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight", -- Use 'tokyonight'
    },
  },
}
