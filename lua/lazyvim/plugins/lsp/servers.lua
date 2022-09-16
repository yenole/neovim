return {
	gopls = {
		cmd = { "gopls" },
		filetypes = { "go", "gomod" },
	},
	sumneko_lua = {
		settings = {
			Lua = {
				workspace = {
					checkThirdParth = false,
				},
				completion = {
					callSnippet = "Replace",
				},
			},
		},
	},
}
