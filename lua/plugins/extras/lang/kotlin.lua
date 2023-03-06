return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			table.insert(opts.ensure_installed, "kotlin")
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "kotlin-language-server", "ktlint" })
		end,
	},

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				kotlin_language_server = {},
			},
		},
	},
}
