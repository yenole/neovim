return {
	-- tokyonight
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		enabled = false,
	},

	-- catppuccin
	{
		"catppuccin/nvim",
		name = "catppuccin",
		enabled = true,
		lazy = false,
		priority = 1000,
		opts = {
			transparent_background = true,
			float = {
				transparent = true,
			},
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme("catppuccin")
		end,
	},

	{
		"EdenEast/nightfox.nvim",
		name = "nightfox",
		enabled = false,
		opts = {
			options = { transparent = true },
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
