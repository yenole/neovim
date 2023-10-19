return {

	-- add golang to treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "http", "json" })
		end,
	},

	-- rest.nvim
	{
		"rest-nvim/rest.nvim",
		event = "BufReadPost *.http",
		opts = {},
		commit = "8b62563",
		keys = { { "<leader>ch", "<Plug>RestNvim", desc = "Rest Request" } },
	},
}
