return {

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			opts.ensure_installed =
				{ "help", "html", "javascript", "json", "lua", "query", "tsx", "typescript", "vim", "http" }
		end,
	},
}
