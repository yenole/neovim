return {
	{
		'dracula/vim',
		lazy   = false,
		name   = 'dracula',

		config = function ()
			vim.g.dracula_colorterm = 0
			vim.cmd 'colorscheme dracula'
		end
	},
}
