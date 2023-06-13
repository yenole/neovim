return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			table.insert(opts.ensure_installed, "php")
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "intelephense" })
		end,
	},

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				intelephense = {},
			},
		},
	},
}
