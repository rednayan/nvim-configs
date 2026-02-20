return {
  "akinsho/toggleterm.nvim",
  config = true,
  keys = {
    { [[<C-\>]], "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
  },
  opts = {
    open_mapping = [[<C-\>]],
    direction = "float", -- options: 'vertical', 'horizontal', 'tab', 'float'
    shell = vim.o.shell,
    float_opts = {
      border = "curved",
    },
  },
}
