return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = function()
				vim.cmd([[colorscheme catppuccin]])
			end,
		},
	},

	-- neo-tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = function(_, opts)
			-- opts.enable_git_status = false
			opts.window.mappings = {
				["."] = {
					function(state)
						local node = state.tree:get_node()
						vim.fn.chdir(node.path)
						require("neo-tree.sources.filesystem.commands").set_root(state)
					end,
					desc = "set_root",
				},
			}
		end,
	},

	-- which-key
	{
		"folke/which-key.nvim",
		opts = {
			spec = {
				{ { "<leader>t", group = "terminals" } },
			},
		},
	},

	{
		"ibhagwan/fzf-lua",
		opts = function(_, opts)
			local fzf = require("fzf-lua")
			fzf.config.defaults.keymap.builtin["<m-q>"] = "hide"
			return opts
		end,
	},

	-- nvim-lspconfig
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				["*"] = {
					keys = {
						{ "<leader>cL", "<cmd>LspRestart<cr>", desc = "Lsp Restart" },
					},
				},
			},
		},
	},

	-- notify
	{
		"rcarriga/nvim-notify",
		opts = function(_, opts)
			opts.background_colour = "#000000"
			opts.top_down = false
		end,
	},

	{
		"folke/snacks.nvim",
		opts = {
			dashboard = {
				preset = {
					header = [[
██╗   ██╗ ██████╗ ██████╗ ██╗   ██╗███╗   ██╗ ██████╗
╚██╗ ██╔╝██╔═══██╗██╔══██╗██║   ██║████╗  ██║██╔═══██╗
 ╚████╔╝ ██║   ██║██████╔╝██║   ██║██╔██╗ ██║██║   ██║
  ╚██╔╝  ██║   ██║██╔══██╗██║   ██║██║╚██╗██║██║   ██║
   ██║   ╚██████╔╝██║  ██║╚██████╔╝██║ ╚████║╚██████╔╝
   ╚═╝    ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ ]],
				},
			},
		},
	},
}
