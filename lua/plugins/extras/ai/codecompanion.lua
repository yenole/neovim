return {
	{
		"olimorris/codecompanion.nvim",
		dependencies = {
			"j-hui/fidget.nvim", -- Display status
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		tag = "v17.33.0",
		cmd = { "CodeCompanion", "CodeCompanionChat" },
		keys = {
			-- { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
			{ "<leader>aa", "<cmd>CodeCompanionActions<cr>", desc = "CodeActions" },
			{ "<leader>ac", "<cmd>CodeCompanion<cr>", desc = "Code" },
			{ "<leader>a/", "<cmd>CodeCompanionChat Toggle<cr>", desc = "CodeChat" },
		},
		opts = {
			strategies = {
				chat = { adapter = "prism" },
				inline = { adapter = { name = "prism", model = "gpt-5" } },
			},
			adapters = {
				http = {
					opts = {
						show_model_choices = true,
					},
					prism = function()
						return require("codecompanion.adapters").extend("openai", {
							url = "https://ai.prism.uno/v1/chat/completions",
							env = {
								-- api_key = ""
							},
							schema = {
								model = {
									default = "gemini-2.5-pro",
									choices = function()
										return {
											["gpt-5.1"] = {
												formatted_name = "GPT 5.1",
											},
											["gemini-2.5-pro"] = {
												formatted_name = "Gemini 2.5 Pro",
											},
											["claude-sonnet-4-5-20250929"] = {
												formatted_name = "Claude Sonnet 4.5",
											},
										}
									end,
								},
							},
						})
					end,
					hybgzs = function()
						return require("codecompanion.adapters").extend("openai", {
							url = "https://ai.hybgzs.com/v1/chat/completions",
							env = {
								-- api_key = ""
							},
							schema = {
								model = {
									default = "gemini-2.5-pro",
									choices = function()
										return {
											["gemini-2.5-pro"] = {
												formatted_name = "Gemini 2.5 Pro",
											},
											["claude-sonnet-4.5"] = {
												formatted_name = "Claude Sonnet 4.5",
											},
										}
									end,
								},
							},
						})
					end,
				},
				acp = {
					gemini_cli = function()
						return require("codecompanion.adapters").extend("gemini_cli", {
							env = {
								GEMINI_API_KEY = "cmd:op read op://personal/Gemini_API/credential --no-newline",
							},
						})
					end,
				},
			},
			opts = {
				log_level = "DEBUG",
			},
		},
	},
}
