return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vstls = {},
        biome = {},
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    -- enabled = false,
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls").builtins
      opts.sources = vim.tbl_extend("force", opts.sources, { --override lazyvim's default sources
        -- ts
        nls.formatting.biome.with({
          args = {
            "check",
            "--write",
            "--unsafe",
            "--formatter-enabled=true",
            "--organize-imports-enabled=true",
            "--skip-errors",
            "--stdin-file-path=$FILENAME",
          },
        }),
        -- other
        nls.formatting.shfmt.with({
          filetypes = { "sh", "zsh" },
        }),
      })
      opts.debug = false
      return opts
    end,
  },
}
