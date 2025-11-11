return {
	recommended = function()
		return LazyVim.extras.wants({
			ft = "solidity",
			root = {
				"foundry.toml",
				"hardhat.config.js",
				"hardhat.config.ts",
			},
		})
	end,
	-- Add Solidity & related to treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = { ensure_installed = { "solidity" } },
	},

	-- Correctly setup lspconfig for Solidity
	{
		"mason-org/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "nomicfoundation-solidity-language-server" })
		end,
	},
}
