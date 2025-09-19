return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "rust", "ron", "toml" })
		end,
	},
	{
		"mason-org/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "rust-analyzer", "codelldb" })
		end,
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				rust_analyzer = {
					keys = {
						{
							"<leader>dr",
							function()
								vim.notify("Cargo build...", "info", { timeout = false })
								vim.fn.jobstart("cargo build", {
									on_exit = function()
										require("notify").dismiss({ pending = true, silent = true })
										require("dap").continue()
									end,
								})
							end,
							desc = "Run (Rust)",
						},
						{
							"<leader>dR",
							function()
								local utils = require("utils.develop")
								local symbol = utils:match_symbol({
									find = "^#%[tokio::test%]",
									offset = 1,
									extract = "fn ([%d%w-_]+)",
								})
								if symbol ~= nil then
									local cmd = "cargo test " .. symbol .. " -- --nocapture"
									require("utils.terminal").output(cmd)
								end
							end,
							desc = "Run Test (Rust)",
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
			dap.adapters.rust = dap.adapters.codelldb
			dap.configurations.rust = {
				{
					name = "launch",
					type = "rust",
					request = "launch",
					program = function()
						return "target/debug/" .. vim.fn.input("Run Rust: ")
					end,
				},
			}
		end,
	},
}
