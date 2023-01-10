return {

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			opts.ensure_installed = { "help", "html", "javascript", "json", "lua", "query", "tsx", "typescript", "vim" }
			if vim.fn.has("win32") == 1 then
				opts.ensure_installed = {}
			end
		end,
	},
}
