vim.keymap.set("n", "<leader>w", "<C-W>")
vim.keymap.set("t", "<m-q>", "<C-\\><C-n>")

vim.keymap.set("i", "jk", "<ESC>")

--file
vim.keymap.set("n", "<leader>fs", "<cmd>w<cr>", { desc = "Saving file" })

--覆写lazyvim函数
LazyVim.terminal = require("utils.terminal").lazyterm

-- delete keymap
vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")
vim.keymap.del("n", "<leader>gG")
