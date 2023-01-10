return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = function()
				vim.g.dracula_colorterm = 0
				vim.cmd("colorscheme dracula")
			end,
		},
	},
}
