local M = {}
local Terminal = require("toggleterm.terminal").Terminal

local function right_bottom()
	local columns = vim.o.columns
	local lines = vim.o.lines
	return {
		width = math.floor(columns * 0.5),
		height = math.floor(lines * 0.45),
		row = math.floor(lines * 0.55) - 2,
		col = math.floor(columns * 0.5),
	}
end

local floaterm = Terminal:new({ display_name = " Terminal ", direction = "float", float_opts = right_bottom() })

function M.toggleterm()
	floaterm:toggle()
end

function M.newterm(cmd)
	Terminal:new({ cmd = cmd, direction = "float" }):open()
end

local lazygit = Terminal:new({ cmd = "lazygit", display_name = " LazyGit ", direction = "float" })

function M.lazygit()
	lazygit:toggle()
end

local output = Terminal:new({ direction = "float", display_name = " Output ", float_opts = right_bottom() })

function M.output(cmd)
	output:open()
	output:clear()
	vim.defer_fn(function()
		output:send(cmd)
	end, 1000)
end

return M
