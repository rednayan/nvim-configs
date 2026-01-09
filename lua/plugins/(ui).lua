return {
  {

    "folke/snacks.nvim",

    opts = {

      dashboard = { enabled = false },
    },
  },

  {

    "nvim-lualine/lualine.nvim",

    opts = function(_, opts)
      opts.sections.lualine_a = {

        {

          "mode",

          fmt = function(str)
            return str:sub(1, 1)
          end,

          separator = { left = "", right = "" },

          padding = { left = 1, right = 1 },
        },
      }

      opts.sections.lualine_b = {}

      opts.sections.lualine_c = {}

      opts.sections.lualine_x = {}

      opts.sections.lualine_y = {

        { "progress", separator = " ", padding = { left = 1, right = 0 } },

        { "location", padding = { left = 0, right = 1 } },
      }

      opts.sections.lualine_z = {}
    end,
  },
}
