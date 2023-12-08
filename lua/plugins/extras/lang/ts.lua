return {
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"prettier",
				"vue-language-server",
				"emmet-language-server",
				"typescript-language-server",
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				tsserver = {},
				volar = {},
				emmet_language_server = {},
			},
		},
	},
}
