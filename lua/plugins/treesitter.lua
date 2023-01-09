return {

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if vim.fn.has("win32") == 1 then
				opts.ensure_installed = {}
			end
		end,
	},
}
