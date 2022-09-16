return {
	-- bufferline.lua
	{
		"akinsho/bufferline.nvim",
		event = "BufAdd",
		config = {
			options = { numbers = "ordinal", }
		},

		keys = {
			{ '<leader>1', ':BufferLineGoToBuffer 1<CR>' },
			{ '<leader>2', ':BufferLineGoToBuffer 2<CR>' },
			{ '<leader>3', ':BufferLineGoToBuffer 3<CR>' },
			{ '<leader>4', ':BufferLineGoToBuffer 4<CR>' },
			{ '<leader>5', ':BufferLineGoToBuffer 5<CR>' },
			{ '<leader>6', ':BufferLineGoToBuffer 6<CR>' },
			{ '<leader>7', ':BufferLineGoToBuffer 7<CR>' },
			{ '<leader>8', ':BufferLineGoToBuffer 8<CR>' },
			{ '<leader>9', ':BufferLineGoToBuffer 9<CR>' },
			{ '<leader>K', ':BufferLineCycleNext<CR>' },
			{ '<leader>J', ':BufferLineCyclePrev<CR>' }
		}
	},

	-- statusline
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		config = {
			options = {
				globalstatus = true,
				disabled_filetypes = { statusline = { "lazy", "alpha" } },
			},
		},
	},

	-- nvim-tree
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		config = {
			hijack_cursor = true, git = { enable = false }, view = { adaptive_size = true },
		},
		keys = {
			{ "<leader>e", ":NvimTreeToggle<CR>" }
		},
	},

	-- alpha-nvim
	{
		"goolord/alpha-nvim",
		lazy = false,
		config = function()
			require 'alpha'.setup(require 'alpha.themes.theta'.config)
		end
	}
}
