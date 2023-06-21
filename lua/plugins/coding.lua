return {
	{
		"neovim/nvim-lspconfig",
		init = function()
			local keys = require("lazyvim.plugins.lsp.keymaps").get()
			table.insert(keys, { "<leader>cL", "<cmd>LspRestart<cr>", desc = "Lsp restart" })
		end,
	},
}
