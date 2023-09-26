return {
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "vue-language-server" })
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
			},
		},
	},
}
