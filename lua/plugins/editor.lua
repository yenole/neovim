return {
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
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "LspAttach",
		config = function()
			require("tiny-inline-diagnostic").setup()
		end,
	},
}
