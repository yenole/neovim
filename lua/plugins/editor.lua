return {
	{ "folke/which-key.nvim", opts = { preset = "classic" } },

	-- translator
	{
		"voldikss/vim-translator",
		keys = { { "<leader>ct", "<cmd>Translate<cr>", desc = "Translate", mode = { "n", "v" } } },
		init = function()
			-- vim.g.translator_default_engines = { "haici" }
		end,
	},
	{
		"mikavilpas/yazi.nvim",
		keys = {
			{ "<leader>z", "<cmd>Yazi toggle<cr>", desc = "Open yazi", mode = { "n", "v" } },
		},
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
