return {
	-- toggleterm
	{
		"akinsho/toggleterm.nvim",
		keys = {
			{ "<c-/>", require("utils.terminal").toggleterm, mode = { "n", "i", "t" }, desc = "Toggle Terminal" },
			{ "<leader>tt", require("utils.terminal").toggleterm, desc = "Toggle Terminal" },
			{ "<leader>tn", require("utils.terminal").terminal, desc = "New Terminal" },
			{ "<leader>to", require("utils.terminal").output, desc = "New Terminal" },
			{ "<leader>tl", require("utils.terminal").term_select, desc = "Terminals" },
			{
				"<leader>ts",
				function()
					require("utils.terminal").terminal("lazysql", { name = "LazySQL" })
				end,
				desc = "Toggle LazySQL",
			},
		},
		opts = { direction = "float", float_opts = { border = "curved", title_pos = "center" } },
	},
}
