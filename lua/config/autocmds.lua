vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function(args)
    if args.match == "java" then
      vim.b[args.buf].autoformat = false
    end
  end,
})
