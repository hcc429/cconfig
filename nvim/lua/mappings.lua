require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<leader>e", ":NvimTreeToggle<CR>", {desc = "toggle nvim tree"})
map("x", "<leader>p", [["_dP]], {desc = "replace with copied content"})

map("n", "j", "gj")
map("n", "k", "gk")
map("n", "H", "^")
map("n", "L", "$")

-- map("n", "<leader>nf", )
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
