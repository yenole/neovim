return {

	-- add golang to treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "http", "json" })
		end,
	},

	-- resty.nvim
	{
		"lima1909/resty.nvim",
		event = "BufReadPost *.http",
		keys = { { "<leader>dh", "<cmd>Resty run<cr>", desc = "Resty Run" } },
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
