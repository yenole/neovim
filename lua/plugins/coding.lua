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
}
