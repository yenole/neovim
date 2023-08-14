return {
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "vetur-vls" })
		end,
	},

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				vuels = {},
			},
		},
	},
}
