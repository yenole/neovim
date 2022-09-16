return {
	-- lspconfig
	{
		"neovim/nvim-lspconfig",
		event = "BufReadPost",
		dependencies = {
			"mason.nvim",
			{ "williamboman/mason-lspconfig.nvim", config = { automatic_installation = true } },
			"hrsh7th/cmp-nvim-lsp",
		},
		servers = nil,
		config = function(plugin)
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local buffer = args.buf
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					require("lazyvim.plugins.lsp.keymaps").on_attach(client, buffer)
				end,
			})

			-- lspconfig
			local capabilities =
			require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

			---@type lspconfig.options
			local servers = plugin.servers or require("lazyvim.plugins.lsp.servers")
			for server, opts in pairs(servers) do
				opts.capabilities = capabilities
				require("lspconfig")[server].setup(opts)
			end
		end,
	},
	-- cmdline tools and lsp servers
	{

		"williamboman/mason.nvim",
		cmd = "Mason",
		keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
		ensure_installed = {
			"stylua",
			"shfmt",
			"goimports",
			"prettierd",
		},
		config = function(plugin)
			require("mason").setup()
			local mr = require("mason-registry")
			for _, tool in ipairs(plugin.ensure_installed) do
				local p = mr.get_package(tool)
				if not p:is_installed() then
					p:install()
				end
			end
		end,
	},

	--formatters
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = "BufReadPre",
		dependencies = { "mason.nvim" },
		config = function()
			local nls = require("null-ls")
			nls.setup({
				sources = {
					nls.builtins.formatting.prettierd,
					nls.builtins.formatting.stylua,
					nls.builtins.formatting.goimports,
					nls.builtins.diagnostics.flake8,
				},
			})
		end,
	},
}
