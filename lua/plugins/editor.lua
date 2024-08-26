return {
	-- ranger
	{
		"simonmclean/triptych.nvim",
		keys = { { "<leader>.", "<cmd>Triptych<cr>", desc = "Ranger" } },
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
		},
		opts = { options = { border = "rounded" } },
	},

	-- toggleterm
	{
		"akinsho/toggleterm.nvim",
		keys = {
			{ "<leader>tt", require("utils.terminal").toggleterm, desc = "Toggle Terminal" },
			{ "<leader>tn", require("utils.terminal").terminal, desc = "New Terminal" },
			{ "<leader>tl", "<cmd>TermSelect<cr>", desc = "Terminals" },
		},
		opts = { direction = "float", float_opts = { border = "curved", title_pos = "center" } },
	},

	-- translator
	{
		"voldikss/vim-translator",
		keys = { { "<leader>ct", "<cmd>Translate<cr>", desc = "Translate", mode = { "n", "v" } } },
		init = function()
			-- vim.g.translator_default_engines = { "haici" }
		end,
	},

	-- rainbow-delimiters
	{
		"HiPhish/rainbow-delimiters.nvim",
		event = "BufReadPost",
	},
}
