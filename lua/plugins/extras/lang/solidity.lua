return {

	-- add golang to treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			table.insert(opts.ensure_installed, "solidity")
		end,
	},

	-- add solang to mason
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "solidity" })
		end,
	},

	-- add solang to lsconfig
	-- {
	-- 	"neovim/nvim-lspconfig",
	-- 	opts = {
	-- 		servers = {
	-- 			solang = {
	-- 				root_dir = require("lazyvim.util").get_root,
	-- 			},
	-- 		},
	-- 	},
	-- },
}
