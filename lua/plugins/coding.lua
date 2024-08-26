return {
	{
		"Exafunction/codeium.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		opts = {},
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"Exafunction/codeium.nvim",
		},
		opts = function(_, opts)
			table.insert(opts.sources, 1, { name = "codeium", group_index = 1 })
		end,
	},

	-- outline
	{
		"hedyhli/outline.nvim",
		keys = { { "<leader>co", "<cmd>Outline<cr>", desc = "Toggle Outline" } },
		opts = {
			outline_window = {
				width = 20,
				relative_width = true,
				auto_close = true,
				auto_jump = true,
			},
		},
	},
}
