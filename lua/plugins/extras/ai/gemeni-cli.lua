return {
	{
		"akinsho/toggleterm.nvim",
		keys = {
			{
				"<leader>ag",
				function()
					require("utils.terminal").terminal("gemini", { name = "Gemini" })
				end,
				desc = "Toggle Gemini CLI",
			},
		},
	},
}
