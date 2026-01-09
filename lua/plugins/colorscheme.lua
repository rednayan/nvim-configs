-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  -- 1. Add the Black Metal plugin
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    -- We use 'config' instead of 'opts' because the module name ('black-metal')
    -- is different from the repo name ('black-metal-theme-neovim').
    config = function()
      require("black-metal").setup({
        transparent = true,
      })
    end,
  },

  -- 2. Configure LazyVim to use the "marduk" variant
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "marduk",
    },
  },

  -- 3. Disable Tokyonight
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
}
