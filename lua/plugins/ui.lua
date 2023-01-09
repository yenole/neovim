return {
	-- notify
	{
		"rcarriga/nvim-notify",
		opts = function(_, opts)
			opts.background_colour = "#000000"
		end,
	},
	-- bufferline
	{
		"akinsho/nvim-bufferline.lua",
		opts = function(_, opts)
			opts.options.numbers = "ordinal"
		end,
	},
}
