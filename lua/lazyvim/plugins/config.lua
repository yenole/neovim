require("lazyvim.config.options")

vim.api.nvim_create_autocmd("User", {
	pattern = "VeryLazy",
	callback = function()
		require("lazyvim.config.autocmds")
		require("lazyvim.config.keymaps")
	end,
})

return {}
