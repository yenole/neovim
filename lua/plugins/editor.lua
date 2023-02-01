return {
	-- neo-tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = function(_, opts)
			opts.enable_git_status = false
		end,
	},

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		opts = function(_, opts)
			opts.defaults.mappings.i = {
				["<m-q>"] = require("telescope.actions").close,
			}
		end,
	},

	-- flotterm
	{
		"voldikss/vim-floaterm",
		event = "VeryLazy",
		init = function()
			if vim.fn.has("win32") == 1 then
				vim.g.floaterm_shell = "pwsh"
			elseif vim.fn.has("mac") == 1 then
				vim.g.floaterm_shell = "zsh"
			end
			vim.keymap.set("t", "<m-`>", "<cmd>FloatermToggle<cr>", { desc = "Floaterm Toggle" })
			vim.keymap.set("t", "<m-Q>", "<cmd>FloatermKill<cr>", { desc = "Floaterm kill" })
			vim.g.floaterm_keymap_next = "<m-~>"

			vim.g.floaterm_title = ""
			vim.g.floaterm_width = 0.9
			vim.g.floaterm_height = 0.7
		end,
	},
}
