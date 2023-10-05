return {
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "vue-language-server", "emmet-language-server", "prettier" })
		end,
	},

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				volar = {
					filetypes = {
						"typescript",
						"javascript",
						"javascriptreact",
						"typescriptreact",
						"vue",
						"json",
					},
				},
				emmet_language_server = {},
			},
		},
	},
}
