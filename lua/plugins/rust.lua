return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- 1. Global Diagnostic Config
      diagnostics = {
        virtual_text = false,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      },
      -- 2. Rust-Analyzer specific settings
      servers = {
        rust_analyzer = {
          mason = false, -- Critical: Tells LazyVim not to look in Mason folders
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
                targetDir = true, -- The "Speed Hack": avoids file locks
              },
              -- Disable the heavy startup "priming" to get to work faster
              cachePriming = {
                enable = false,
              },
              checkOnSave = {
                command = "clippy",
                extraArgs = { "--no-deps" }, -- Faster checks by ignoring dependencies
              },
              procMacro = {
                enable = true,
              },
              inlayHints = {
                bindingModeHints = { enable = false },
                chainingHints = { enable = false },
                closingBraceHints = { enable = false },
                parameterHints = { enable = false },
                typeHints = { enable = false },
              },
              completion = {
                postfix = { enable = false },
              },
            },
          },
        },
      },
      -- 3. Custom Setup: Keep Inlay Hints off
      setup = {
        rust_analyzer = function(_, opts)
          require("lazyvim.util").lsp.on_attach(function(client, buffer)
            if client.name == "rust_analyzer" then
              vim.lsp.inlay_hint.enable(false, { bufnr = buffer })
            end
          end)
        end,
      },
    },
  },
}
