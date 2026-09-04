return {
	{
		"folke/sidekick.nvim",
		opts = {
			cli = {
				prompts = {
					["git:commits"] = "Analyze the diff and split it into multiple Git commits.",
					["git:tag"] = "Push the current branch and push the new tag.",
				},
			},
		},
	},
}
