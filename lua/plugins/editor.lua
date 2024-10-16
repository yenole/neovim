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
		branch = "v0.3.0",
		event = "BufReadPost",
	},

	{
		"hedyhli/outline.nvim",
		keys = { { "<leader>co", "<cmd>Outline<cr>", desc = "Toggle Outline" } },
		opts = {
			outline_window = {
				width = 15,
				relative_width = true,
				auto_close = true,
				auto_jump = true,
			},
		},
	},

	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "LspAttach",
		config = function()
			require("tiny-inline-diagnostic").setup()
		end,
	},
}
