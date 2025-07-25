return {
  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    dependencies = {
      "mason.nvim",
      { "mason-org/mason-lspconfig.nvim", config = function() end },
    },
    opts = {
      servers = {
        ruff = {
          mason = true,
          enabled = true,
          on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
            client.server_capabilities.diagnosticProvider = false
          end,
        },
        pyright = {
          mason = true,
          enabled = true,
          settings = {
            pyright = {
              disableOrganizeImports = true,
            },
            python = {
              analysis = {
                ignore = { "*" },
              },
            },
          },
        },
      },
    },
  },
}
-- return {
--   {
--     "nvimtools/none-ls.nvim",
--     enabled = false,
--     optional = true,
--     opts = function(_, opts)
--       local nls = require("null-ls").builtins
--       opts.sources = vim.tbl_extend("force", opts.sources, { --override lazyvim's default sources
--         nls.formatting.biome.with({
--           args = {
--             "check",
--             "--write",
--             "--unsafe",
--             "--formatter-enabled=true",
--             "--organize-imports-enabled=true",
--             "--skip-errors",
--             "--stdin-file-path=$FILENAME",
--           },
--         }),
--         nls.formatting.shfmt.with({
--           filetypes = { "sh", "zsh" },
--         }),
--       })
--       opts.debug = false
--       return opts
--     end,
--   },
--   {
--     "neovim/nvim-lspconfig",
--     opts = {
--       servers = {
--         biome = {},
--         vtsls = {},
--       },
--       -- diagnostics = {
--       --   virtual_text = {
--       --     severity = {
--       --       max = vim.diagnostic.severity.WARN,
--       --     },
--       --   },
--       --   virtual_lines = {
--       --     severity = {
--       --       min = vim.diagnostic.severity.ERROR,
--       --     },
--       --   },
--       -- },
--     },
--   },
-- }
