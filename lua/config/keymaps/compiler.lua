vim.api.nvim_set_keymap(
  "n",
  "<leader>cC",
  "<cmd>CompilerOpen<cr>",
  { noremap = true, silent = true, desc = "open compiler" }
)

vim.api.nvim_set_keymap(
  "n",
  "<F5>",
  "<cmd>CompilerStop<cr>" .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap("n", "<F4>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
