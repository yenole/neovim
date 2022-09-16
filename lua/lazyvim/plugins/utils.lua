return {
	{
		'voldikss/vim-floaterm',
		event = 'VeryLazy',
		keys = {
			-- { '<m-`>', ":FloatermToggle<CR>" },
			-- { '<m-~>', ':FloatermNext<CR>' },
			{ '<leader>=', ":FloatermNew<CR>" },
			{ '<leader>gg', ":FloatermNew lazygit<CR>" }
		},
		init = function()
			if vim.fn.has('win32') then
				vim.g.floaterm_shell = 'powershell'
			end
			vim.g.floaterm_keymap_toggle = '<m-`>'
			vim.g.floaterm_keymap_next = '<m-~>'
			vim.g.floaterm_title = ''
			vim.g.floaterm_width = 0.8
			vim.g.floaterm_height = 0.7
		end
	}

}
