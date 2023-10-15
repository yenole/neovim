return {
	-- notify
	{
		"rcarriga/nvim-notify",
		opts = function(_, opts)
			opts.background_colour = "#000000"
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
