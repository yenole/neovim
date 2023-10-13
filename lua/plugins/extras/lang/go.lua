return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "go" })
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "goimports", "gopls", "delve" })
		end,
	},

	{
		"nvimtools/none-ls.nvim",
		opts = function(_, opts)
			table.insert(opts.sources, require("null-ls").builtins.formatting.goimports)
		end,
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				gopls = {
					keys = {
						{
							"<leader>dr",
							function()
								require("dap").continue()
							end,
							desc = "Run (Go)",
						},
					},
				},
			},
		},
	},
	{
		"mfussenegger/nvim-dap",
		opts = function(_, _)
			local dap = require("dap")
			dap.adapters.go = dap.adapters.delve
			dap.configurations.go = {
				{
					type = "go",
					name = "Debug",
					request = "launch",
					program = "${file}",
				},
				{
					type = "go",
					name = "Debug Package",
					request = "launch",
					program = "${fileDirname}",
				},
				{
					type = "go",
					name = "Debug Test",
					request = "launch",
					mode = "test",
					program = "./${relativeFileDirname}",
					args = function()
						local line = vim.fn.getline(".")
						if line:find("func Test") then
							local fn = string.match(line, "func Test(%w+)")
							return { "-test.run", "Test" .. fn }
						end
						return { "-test.run", "Test" .. vim.fn.input("Name:") }
					end,
				},
			}
			require("dap.ext.vscode").load_launchjs()
		end,
	},
}
