return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = "BufReadPost",
		config = function()
			require("nvim-treesitter.configs").setup({
				sync_install = false,
				ensure_installed = { "lua", "go", "http", "json" },
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
