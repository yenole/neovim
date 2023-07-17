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

	-- dracula
	{
		"dracula/vim",
		name = "dracula",
		enabled = false,
		opts = function()
			vim.g.dracula_colorterm = 0
		end,
	},

	-- rose pine
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			disable_background = true,
			disable_float_background = true,
		},
	},
}
