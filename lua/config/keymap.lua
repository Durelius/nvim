vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set({ "n", "o", "v" }, "<C-u>", "{", { desc = "Previous paragraph" })
vim.keymap.set({ "n", "o", "v" }, "<C-n>", "}", { desc = "Next paragraph" })

-- Normal mode
vim.keymap.set("n", "<C-j>", "<cmd>execute 'move .+' . v:count1<CR>==", { desc = "Move Down" })
vim.keymap.set("n", "<C-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<CR>==", { desc = "Move Up" })
vim.keymap.set("n", "<C-s>", function()
  vim.cmd("wa")
  vim.lsp.buf.format()
end, { desc = "Save and format" })


-- Insert mode
vim.keymap.set("i", "<C-k>", "<Esc><cmd>m .-2<CR>==gi", { desc = "Move Up" })
vim.keymap.set("i", "<C-j>", "<Esc><cmd>m .+1<CR>==gi", { desc = "Move Down" })

-- Visual mode
vim.keymap.set("v", "<C-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<CR>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<C-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<CR>gv=gv", { desc = "Move Up" })
vim.keymap.set("n", "<leader>cf", function()
  vim.lsp.buf.format()
end, { desc = "Format File" })
vim.keymap.del('n', 'gra')
vim.keymap.del('n', 'gri')
vim.keymap.del('n', 'grn')
vim.keymap.del('n', 'grt')
vim.keymap.del('n', 'grr')
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Popup diagnostic" })
-- start remap error jump
local diagnostic_goto = function(next, severity)
  return function()
    vim.diagnostic.jump({
      count = (next and 1 or -1) * vim.v.count1,
      severity = severity and vim.diagnostic.severity[severity] or nil,
      float = true,
    })
  end
end
vim.keymap.set("n", "<C-e>", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
vim.keymap.set("n", "<C-r>", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
-- end remap error jump

vim.keymap.set("n", "cr", ":IncRename ")
