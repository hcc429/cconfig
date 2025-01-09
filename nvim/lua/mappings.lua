require "nvchad.mappings"
-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "toggle nvim tree" })

map("n", "<leader>d", [["_d]], {desc = "delete without yanking"})
map("x", "<leader>p", [["_dP]], { desc = "replace with copied content" })

map("n", "j", "gj")
map("n", "k", "gk")
map("n", "H", "^")
map("n", "L", "$")
map("n", "J", "mzJ`z")


map("n", '<CR>', 'm`o<Esc>``', {desc = "add blank line below"})



-- move line(s) up and down
map("v", "<M-j>", ":m '>+1<CR>gv=gv", { silent = true, desc = "move selected text down" })
map("v", "<M-k>", ":m '<-2<CR>gv=gv", { silent = true, desc = "move selected text up" })
map("n", "<M-j>", "<Esc>:m .+1<CR>==", { silent = true, desc = "Move current line down" })
map("n", "<M-k>", "<Esc>:m .-2<CR>==", { silent = true, desc = "Move current line up" })

-- scroll and center
map("n", "<C-d>", "<C-d>zz", { desc = "scroll down and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "scroll up and center" })

-- search next, center and ensure fully visible
map("n", "n", "nzzzv", { desc = "search next, and center" })
map("n", "N", "Nzzzv", { desc = "search prev, and center" })



-- find all files except those under .git/
map("n", "<leader>fa", function()
  require("telescope.builtin").find_files {
    file_ignore_patterns = { ".git/" },
  }
end, { desc = "find all files" })
