require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

vim.opt.relativenumber = true



vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*"},
  command = [[%s/\s\+$//e]],
})
