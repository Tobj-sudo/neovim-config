-- toggle checkstyle-linter for java files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    vim.api.nvim_set_keymap(
      "n",
      "<leader>cL",
      ":lua toggle_linter()<CR>",
      { noremap = true, silent = true, desc = "Toggle checkstyle" }
    )
  end,
})
