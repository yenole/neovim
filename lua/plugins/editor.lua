return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{
				"<leader>e",
				function()
					require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
				end,
				desc = "NeoTree (root dir)",
			},
			{ "<leader>E", "<cmd>Neotree toggle<CR>", desc = "NeoTree (cwd)" },
		},
		opts = function(_, opts)
			opts.enable_git_status = false
		end,
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

	-- hop.nvim
	{
		"phaazon/hop.nvim",
		opts = {
			keys = "etovxqpdygfblzhckisuran",
			term_seq_bias = 0.5,
		},
		keys = {
			{ "<leader>hp", "<cmd>HopWord<cr>", { desc = "Hop Word" } },
		},
	},

	-- flotterm
	{
		"voldikss/vim-floaterm",
		event = "VeryLazy",
		keys = {
			{ "<leader>=", "<cmd>FloatermNew<cr>", desc = "New Floaterm" },
			{ "<leader>gg", "<cmd>FloatermNew lazygit<cr>", desc = "Lazygit (cmd)" },
		},
		init = function()
			if vim.fn.has("win32") == 1 then
				vim.g.floaterm_shell = "powershell"
			elseif vim.fn.has("mac") == 1 then
				vim.g.floaterm_shell = "zsh"
			end
			vim.keymap.set("t", "<m-`>", "<cmd>FloatermToggle<cr>", { desc = "Floaterm Toggle" })
			vim.g.floaterm_keymap_next = "<m-~>"

			vim.g.floaterm_title = ""
			vim.g.floaterm_width = 0.9
			vim.g.floaterm_height = 0.7
		end,
	},
}
