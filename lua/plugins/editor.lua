return {
	-- neo-tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = function(_, opts)
			opts.enable_git_status = false
			opts.window.mappings = {
				["."] = {
					function(state)
						local node = state.tree:get_node()
						vim.fn.chdir(node.path)
					end,
					desc = "set_root",
				},
			}
		end,
	},

	{
		"folke/which-key.nvim",
		opts = {
			spec = {
				{ { "<leader>t", group = "terminals" } },
			},
		},
	},

	-- ranger
	{
		"simonmclean/triptych.nvim",
		keys = { { "<leader>.", "<cmd>Triptych<cr>", desc = "Ranger" } },
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
		},
		opts = { options = { border = "rounded" } },
	},

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		opts = function(_, opts)
			opts.defaults.mappings.i = {
				["<m-q>"] = require("telescope.actions").close,
			}
		end,
	},

	-- toggleterm
	{
		"akinsho/toggleterm.nvim",
		keys = {
			{ "<leader>tt", require("utils.terminal").toggleterm, desc = "Toggle Terminal" },
			{ "<leader>tn", require("utils.terminal").terminal, desc = "New Terminal" },
			{ "<leader>tl", "<cmd>TermSelect<cr>", desc = "Terminals" },
		},
		opts = { direction = "float", float_opts = { border = "curved", title_pos = "center" } },
	},

	-- translator
	{
		"voldikss/vim-translator",
		keys = { { "<leader>ct", "<cmd>Translate<cr>", desc = "Translate", mode = { "n", "v" } } },
		init = function()
			-- vim.g.translator_default_engines = { "haici" }
		end,
	},

	-- rainbow-delimiters
	{
		"HiPhish/rainbow-delimiters.nvim",
		event = "BufReadPost",
	},
}
