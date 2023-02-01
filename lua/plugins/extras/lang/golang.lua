return {

	-- add golang to treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			table.insert(opts.ensure_installed, "go")
		end,
	},

	-- add goimports to null-ls
	{
		"jose-elias-alvarez/null-ls.nvim",
		opts = function(_, opts)
			table.insert(opts.sources, require("null-ls").builtins.formatting.goimports)
		end,
	},

	--
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "gopls", "goimports" })
		end,
	},
}
