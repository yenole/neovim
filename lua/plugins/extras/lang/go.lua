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
			local function get_input(prefix, title)
				return coroutine.create(function(dap_run_co)
					local args = { prefix }
					if prefix ~= nil then
						table.insert(args, prefix)
					end
					vim.ui.input({ prompt = title }, function(input)
						args = vim.split(input or "", " ")
						coroutine.resume(dap_run_co, args)
					end)
				end)
			end

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
					name = "Debug (Args)",
					request = "launch",
					program = "${file}",
					args = function()
						return get_input(nil, "Args:")
					end,
				},
				{
					type = "go",
					name = "Debug Package",
					request = "launch",
					program = "${fileDirname}",
				},
				{
					type = "go",
					name = "Debug Package (Args)",
					request = "launch",
					program = "${fileDirname}",
					args = function()
						return get_input(nil, "Args:")
					end,
				},
				{
					type = "go",
					name = "Debug Test",
					request = "launch",
					mode = "test",
					program = "${file}",
					args = function()
						return get_input("-test.run", "Name:")
					end,
				},
			}
			require("dap.ext.vscode").load_launchjs()
		end,
	},
}
