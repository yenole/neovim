return {
	--language
	-- { import = "plugins.extras.lang.php" },
	{ import = "plugins.extras.lang.ts" },
	{ import = "plugins.extras.lang.go" },
	{ import = "plugins.extras.lang.rust" },
	-- { import = "plugins.extras.lang.kotlin" },

	--tools
	{ import = "plugins.extras.tools.http" },

	{
		"neovim/nvim-lspconfig",
		init = function()
			local keys = require("lazyvim.plugins.lsp.keymaps").get()
			table.insert(keys, { "<leader>cL", "<cmd>LspRestart<cr>", desc = "Lsp Restart" })
		end,
	},
}
