return {

	-- add solidity to treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			table.insert(opts.ensure_installed, "solidity")
		end,
	},

	-- add solidity to null-ls
	-- {
	--     "nvimtools/none-ls.nvim",
	--     opts = function(_, opts)
	--         local nls = require("null-ls")
	--         table.insert(opts.sources, nls.builtins.formatting.prettier.with({ extra_filetypes = { "solidity" } }))
	--     end,
	-- },
	-- add solidity to lspconfig
	-- {
	-- 	"neovim/nvim-lspconfig",
	-- 	opts = function(_, opts)
	-- 		opts.servers.solidity = {
	-- 			cmd = { "solidity-ls", "--stdio" },
	-- 			filetypes = { "solidity" },
	-- 			root_dir = require("lazyvim.util").get_root,
	-- 		}
	-- 	end,
	--   {
	-- 	solidity = {
	-- 		cmd = { "solidity-language-server", "--stdio" },
	-- 		filetypes = { "solidity" },
	-- 		root_dir = require("lspconfig.util").root_pattern(".git", "package.json"),
	-- 	},
	-- },
	-- function()
	-- 	local registry = require("mason-registry")
	-- 	local pkg = registry.get_package("solidity-ls")
	-- 	local path = pkg:get_install_path()
	-- 	print(vim.inspect(opts))
	-- end,
	-- },
}
