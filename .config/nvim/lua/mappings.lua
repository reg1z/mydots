require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<C-h>", ":<C-u>TmuxNavigateLeft<cr>", { silent = true })
map("n", "<C-j>", ":<C-u>TmuxNavigateDown<cr>", { silent = true })
map("n", "<C-k>", ":<C-u>TmuxNavigateUp<cr>", { silent = true })
map("n", "<C-l>", ":<C-u>TmuxNavigateRight<cr>", { silent = true })


-- map("n", "j", "jzz")
-- map("n", "k", "kzz")
-- map("n", "<C-d>", "<C-d>zz")
-- map("n", "<C-u>", "<C-u>zz")
-- map("n", "{", "{zz")
-- map("n", "}", "}zz")
