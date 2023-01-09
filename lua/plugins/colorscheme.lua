return {

	-- disable tokyonight
	{
		"folke/tokyonight.nvim",
		enabled = false,
	},

	-- disable catppuccin
	{
		"catppuccin/nvim",
		name = "catppuccin",
		enabled = false,
	},

	{
		"dracula/vim",
		name = "dracula",
		lazy = false,
		config = function()
			vim.g.dracula_colorterm = 0
			vim.cmd("colorscheme dracula")
		end,
	},
}
