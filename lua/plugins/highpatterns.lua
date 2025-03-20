return {
  {
    "echasnovski/mini.hipatterns",
    config = function()
      require("mini.hipatterns").setup({
        highlighters = {
          fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
          hack = { pattern = "%f[%w]()BUG()%f[%W]", group = "MiniHipatternsBug" },
          todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
          note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

          hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
        },
      })

      vim.api.nvim_set_hl(0, "MiniHipatternsFixme", { bg = "#FF00FF", fg = "#000000", bold = true })
      vim.api.nvim_set_hl(0, "MiniHipatternsTodo", { bg = "#33AA00", fg = "#000000", bold = true })
      vim.api.nvim_set_hl(0, "MiniHipatternsBug", { bg = "#FF0000", fg = "#000000", bold = true })
    end,
  },
}
