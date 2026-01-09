return {
  { "nvim-mini/mini.icons", enabled = false },
  { "nvim-tree/nvim-web-devicons", enabled = false },

  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },

      picker = {
        sources = {
          explorer = {
            replace_netrw = true,
            git_status = false,
          },
        },
        formatters = {
          file = {
            icon = false,
          },
        },
      },
    },
    keys = {
      {
        "<leader>e",
        function()
          Snacks.explorer()
        end,
        desc = "File Explorer",
      },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options.section_separators = ""
      opts.options.component_separators = ""

      opts.sections.lualine_a = {
        {
          "mode",
          fmt = function(str)
            return str:sub(1, 1)
          end,
          separator = "",
          padding = 1,
        },
      }
      opts.sections.lualine_b = {}
      opts.sections.lualine_c = {}
      opts.sections.lualine_x = {}
      opts.sections.lualine_y = {
        { "location", padding = { left = 0, right = 1 } },
      }
      opts.sections.lualine_z = {}
    end,
  },
  { "SmiteshP/nvim-navic", enabled = false },
}
