vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.tex",
  callback = function(args)
vim.fn.jobstart({
  "sh", "-c",
  "latexmk -pdf " .. vim.fn.shellescape(args.file) .. " && latexmk -c " .. vim.fn.shellescape(args.file)
}, { detach = true })
  end,
})
