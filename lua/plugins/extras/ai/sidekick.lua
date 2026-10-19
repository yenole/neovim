return {
	{
		"folke/sidekick.nvim",
		opts = function(_, opts)
			opts.cli = opts.cli or {}
			opts.cli.prompts = opts.cli.prompts
				or {
					["git:commits"] = "Analyze the diff and split it into multiple Git commits.",
					["git:tag"] = "Push the current branch and push the new tag.",
				}
			local defaults = vim.deepcopy(opts.cli.prompts)

			--- 重置为默认后合并项目 .prompt.json（平铺的 prompt 键值对）
			---@return table<string, any> prompts
			local function load()
				local prompts = vim.deepcopy(defaults)
				local file = vim.fn.getcwd() .. "/.prompt.json"
				local ok, res = pcall(function()
					return vim.json.decode(table.concat(vim.fn.readfile(file), "\n"))
				end)
				if ok and type(res) == "table" then
					prompts = vim.tbl_deep_extend("force", prompts, res)
				elseif vim.fn.filereadable(file) == 1 then
					vim.notify("[sidekick] 解析 " .. file .. " 失败: " .. tostring(res), vim.log.levels.WARN)
				end
				return prompts
			end

			opts.cli.prompts = load()

			-- 切换目录后重新加载
			vim.api.nvim_create_autocmd("DirChanged", {
				group = vim.api.nvim_create_augroup("sidekick_project_prompts", { clear = true }),
				callback = function()
					opts.cli.prompts = load()
					require("sidekick.config").cli.prompts = opts.cli.prompts
				end,
			})

			return opts
		end,
	},
}
