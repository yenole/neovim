vim.keymap.set("n", "<leader>w", "<C-W>")
vim.keymap.set("t", "<m-q>", "<C-\\><C-n>")

vim.keymap.set("i", "jk", "<ESC>")

--file
vim.keymap.set("n", "<leader>fs", "<cmd>w<cr>", { desc = "saving file" })

-- delete lazyvim keymap
vim.keymap.del("n", "<leader>gG")
