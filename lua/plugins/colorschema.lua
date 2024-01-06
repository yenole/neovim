return {
	-- tokyonight
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		enabled = false,
	},

	{
		"Yazeed1s/oh-lucy.nvim",
		name = "oh-lucy",
		enabled = true,
		init = function()
			-- vim.g.oh_lucy_transparent_background = true
			vim.g.oh_lucy_evening_transparent_background = true
		end,
	},

	-- catppuccin
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
		init = function()
			vim.g.dracula_colorterm = 0
		end,
	},

	-- rose pine
	{
		"rose-pine/neovim",
		name = "rose-pine",
		enabled = false,
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
