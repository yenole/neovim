vim.keymap.set("n", "<leader>w", "<C-W>")
vim.keymap.set("t", "<m-q>", "<C-\\><C-n>")

vim.keymap.set("i", "jk", "<ESC>")

--file
local utils = require("utils")
vim.keymap.set("n", "<leader>fs", "<cmd>w<cr>", { desc = "Saving file" })
vim.keymap.set("n", "<leader>ft", utils.floaterm, { desc = "Floaterm" })
vim.keymap.set("n", "<leader>fg", utils.ranger, { desc = "Ranger" })
vim.keymap.set("n", "<leader>gg", utils.lazygit, { desc = "Lazygit" })

-- delete keymap
vim.keymap.del("n", "<leader>gG")
vim.keymap.del("n", "<leader>fT")
