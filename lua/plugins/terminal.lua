return {
	-- toggleterm
	{
		"akinsho/toggleterm.nvim",
		keys = {
			{ "<leader>tt", require("utils.terminal").toggleterm, desc = "Toggle Terminal" },
			{ "<leader>tn", require("utils.terminal").terminal, desc = "New Terminal" },
			{ "<leader>to", require("utils.terminal").output, desc = "New Terminal" },
			{ "<leader>tl", require("utils.terminal").term_select, desc = "Terminals" },
		},
		opts = { direction = "float", float_opts = { border = "curved", title_pos = "center" } },
	},
}
