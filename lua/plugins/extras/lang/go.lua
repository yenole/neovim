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
			vim.list_extend(opts.ensure_installed, { "gopls", "delve", "goimports" })
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = function(_, opts)
			opts.formatters_by_ft.go = { "goimports" }
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
						{
							"<leader>ccr",
							function()
								local bufname = vim.fn.bufname():gsub(vim.fn.getcwd() .. "/", "")
								if not bufname:find("_test.go") then
									vim.notify("Not a test file", vim.log.levels.ERROR)
									return
								end
								local dirname = vim.fn.fnamemodify(bufname, ":h")
								local line = vim.fn.getline(".")
								if line:find("func Test") then
									local fn = string.match(line, "func Test(%w+)")
									local cmd = "go test ./" .. dirname .. " -v -run Test" .. fn
									vim.cmd("FloatermToggle output")
									vim.cmd("FloatermSend --name=output " .. cmd)
								end
							end,
							desc = "Run Test (Go)",
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
