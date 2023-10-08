return {
	{
		"neovim/nvim-lspconfig",
		init = function()
			local keys = require("lazyvim.plugins.lsp.keymaps").get()
			table.insert(keys, { "<leader>cL", "<cmd>LspRestart<cr>", desc = "Lsp Restart" })
		end,
	},
	{
		"Exafunction/codeium.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		opts = {},
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"Exafunction/codeium.nvim",
		},
		opts = function(_, opts)
			table.insert(opts.sources, 1, { name = "codeium", group_index = 1 })
			-- local cmp = require("cmp")
			-- opts.sources = cmp.config.sources({
			-- 	{ name = "nvim_lsp" },
			-- 	{ name = "codeium" },
			-- 	{ name = "luasnip" },
			-- 	{ name = "buffer" },
			-- 	{ name = "path" },
			-- })
			-- vim.notify(vim.inspect(opts.sources))
			-- return opts
		end,
	},
}
