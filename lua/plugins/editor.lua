return {
	-- neo-tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = function(_, opts)
			opts.enable_git_status = false
		end,
	},

	-- {
	-- 	"simrat39/symbols-outline.nvim",
	-- 	keys = { { "<leader>o", "<cmd>SymbolsOutline<CR>", desc = "Symbols Outline" } },
	-- 	opts = {
	-- 		width = 45,
	-- 		relative_width = false,
	-- 		auto_close = true,
	-- 	},
	-- },
	{
		"stevearc/aerial.nvim",
		keys = { { "<leader>o", "<cmd>AerialOpen<CR>", desc = "Symbols Outline" } },
		opts = {
			close_on_select = true,
			layout = { width = 40, height = 40, default_width = 40, default_height = 40 },
			icons = {
				Array = " ",
				Boolean = " ",
				Class = " ",
				Constant = " ",
				Constructor = " ",
				Enum = " ",
				EnumMember = " ",
				Event = " ",
				Field = " ",
				File = " ",
				Function = " ",
				Interface = " ",
				Key = " ",
				Method = " ",
				Module = " ",
				Namespace = " ",
				Null = " ",
				Number = " ",
				Object = " ",
				Operator = "󰆕 ",
				Package = " ",
				Property = " ",
				String = " ",
				Struct = " ",
				TypeParameter = "󰗴 ",
				Variable = " ",
				Collapsed = " ",
			},
		},
	},

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		keys = { { "<leader>/", false } },
		opts = function(_, opts)
			opts.defaults.mappings.i = {
				["<m-q>"] = require("telescope.actions").close,
			}
		end,
	},

	-- flotterm
	{
		"voldikss/vim-floaterm",
		keys = { { "<leader>/", "<cmd>FloatermToggle<cr>", desc = "FloatermToggle" } },
		init = function()
			if vim.fn.has("win32") == 1 then
				vim.g.floaterm_shell = "pwsh -nologo"
			elseif vim.fn.has("mac") == 1 then
				vim.g.floaterm_shell = "zsh"
			end
			vim.keymap.set("t", "<leader>/", "<cmd>FloatermToggle<cr>", { desc = "Floaterm Toggle" })
			vim.keymap.set("t", "<m-Q>", "<cmd>FloatermKill<cr>", { desc = "Floaterm kill" })
			vim.keymap.set("t", "<c-n>", "<cmd>FloatermNew<cr>", { desc = "FloatermNew" })
			vim.g.floaterm_keymap_next = "<m-`>"

			vim.g.floaterm_title = ""
			vim.g.floaterm_width = 0.5
			vim.g.floaterm_height = 0.4
			vim.g.floaterm_position = "bottomright"
		end,
	},
}
