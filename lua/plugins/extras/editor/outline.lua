return {
	{
		"folke/trouble.nvim",
		optional = true,
		keys = {
			{ "<leader>cs", false },
		},
	},

	{
		"hedyhli/outline.nvim",
		keys = { { "<leader>cs", "<cmd>Outline<cr>", desc = "Toggle Outline" } },
		opts = {
			outline_window = {
				width = 15,
				relative_width = true,
				auto_close = true,
				auto_jump = true,
			},
		},
	},
}
