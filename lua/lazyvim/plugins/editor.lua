return {
	-- hop.nvim
	{
		"phaazon/hop.nvim",
		config = {
			keys = "etovxqpdygfblzhckisuran",
			term_seq_bias = 0.5,
		},
		keys = {
			{ "<leader><Space>", ":HopWord<CR>" },
		},
	},

	-- rainbow
	{
		"luochen1990/rainbow",
		event = "VeryLazy",
		config = function()
			vim.g.rainbow_active = true
		end,
	},

	-- telescope.nvim
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		dependencies = {},
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
			{ "<leader>fp", "<cmd>Telescope live_grep<CR>", desc = "Live Grep" },
			{ "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Buffers" },
		},
		config = function()
			require("telescope").setup({
				defaults = {
					mappings = { i = { ["<m-q>"] = require("telescope.actions").close } },
				},
			})
		end,
	},
}
