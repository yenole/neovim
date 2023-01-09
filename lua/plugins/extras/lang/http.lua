return {

	-- add golang to treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "http", "json" })
		end,
	},

	-- rest.nvim
	{
		"rest-nvim/rest.nvim",
		event = "BufEnter *.http",
		opts = {},
		keys = {
			{ "<leader>hr", "<Plug>RestNvim" },
		},
		config = function()
			-- vim.api.nvim_create_autocmd({ "BufEnter" }, { pattern = { "*.http" },
			-- 	callback = function(args)
			-- 		print("this is open http")
			-- 	end,
			-- })
			require("rest-nvim").setup({})
		end,
	},
}
