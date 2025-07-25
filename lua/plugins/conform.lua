return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "biome", lsp_format = "never" },
      python = { "ruff_format", lsp_format = "never" },
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
  },
}
