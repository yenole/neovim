return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = function()
				vim.cmd([[colorscheme rose-pine]])
			end,
		},
	},

	{ "folke/trouble.nvim", enabled = false },

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

	-- which-key
	{
		"folke/which-key.nvim",
		opts = {
			spec = {
				{ { "<leader>t", group = "terminals" } },
			},
		},
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

	-- nvim-lspconfig
	{
		"neovim/nvim-lspconfig",
		init = function()
			local keys = require("lazyvim.plugins.lsp.keymaps").get()
			-- 配置重启LSP
			table.insert(keys, { "<leader>cL", "<cmd>LspRestart<cr>", desc = "Lsp Restart" })
		end,
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
		"nvimdev/dashboard-nvim",
		opts = function(_, opts)
			local logo = [[
██╗   ██╗ ██████╗ ██████╗ ██╗   ██╗███╗   ██╗ ██████╗ 
╚██╗ ██╔╝██╔═══██╗██╔══██╗██║   ██║████╗  ██║██╔═══██╗
 ╚████╔╝ ██║   ██║██████╔╝██║   ██║██╔██╗ ██║██║   ██║
  ╚██╔╝  ██║   ██║██╔══██╗██║   ██║██║╚██╗██║██║   ██║
   ██║   ╚██████╔╝██║  ██║╚██████╔╝██║ ╚████║╚██████╔╝
   ╚═╝    ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ 
        ]]
			logo = string.rep("\n", 8) .. "\n" .. logo .. "\n\n"
			opts.config.header = vim.split(logo, "\n", {})
			table.remove(opts.config.center, 7)
			table.remove(opts.config.center, 7)
		end,
	},
}
