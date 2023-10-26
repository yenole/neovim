return {
	-- disable tokyonight
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		enabled = false,
	},

	-- disable catppuccin
	{
		"catppuccin/nvim",
		name = "catppuccin",
		enabled = false,
		opts = {
			transparent_background = true,
		},
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
		-- enabled = false,
		opts = {
			disable_background = true,
			disable_float_background = true,
		},
	},

	{
		"Mofiqul/vscode.nvim",
		name = "vscode",
		enabled = false,
		opts = {
			transparent = true,
		},
	},
}
