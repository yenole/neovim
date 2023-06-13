vim.keymap.set("n", "<leader>w", "<C-W>")
vim.keymap.set("t", "<m-q>", "<C-\\><C-n>")

vim.keymap.set("i", "jk", "<ESC>")

--file
vim.keymap.set("n", "<leader>fs", "<cmd>w<cr>", { desc = "Saving file" })
vim.keymap.set("n", "<leader>ft", "<cmd>FloatermToggle<cr>", { desc = "Floaterm" })
vim.keymap.set("n", "<leader>fT", "<cmd>FloatermNew<cr>", { desc = "FloatermNew" })
vim.keymap.set("n", "<c-/>", "<cmd>FloatermToggle<cr>", { desc = "FloatermToggle" })

-- lazygit
vim.keymap.del("n", "<leader>gG")
-- vim.keymap.set("n", "<leader>gg", "<cmd>FloatermNew lazygit<cr>", { desc = "Lazygit" })

-- code
vim.keymap.set("n", "<leader>cL", "<cmd>LspRestart<cr>", { desc = "Lsp Restart" })

-- window
