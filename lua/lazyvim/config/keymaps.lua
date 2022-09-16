local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

keymap("n", "<leader>w", "<C-W>", opts)
keymap("n", "<leader>s", ":w<CR>", opts)
keymap("n", "<leader>cc", ":bd<CR>", opts)
keymap("t", "<m-q>", "<C-\\><C-n>", opts)

keymap("i", "jk", "<ESC>", opts)
