local M = {}

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

function M.get_terminal(cmd, opts)
	opts = opts or {}
	local toggleterm = require("toggleterm.terminal")
	return toggleterm.find(function(term)
		return term.display_name == opts.name
	end) or toggleterm.Terminal:new({
		cmd = cmd,
		dir = opts.cwd,
		display_name = opts.name,
		float_opts = opts.float_opts or {},
	})
end

function M.toggleterm()
	local term = M.get_terminal(nil, { name = " Terminal ", float_opts = right_bottom() })
	term:toggle()
end

function M.lazyterm(cmd, opts)
	if cmd == nil then
		return M.toggleterm()
	else
		return M.terminal(table.concat(cmd, " "), opts)
	end
end

function M.terminal(cmd, opts)
	M.get_terminal(cmd, opts):open()
end

function M.output(cmd)
	local term = M.get_terminal(nil, { name = " Output ", float_opts = right_bottom() })
	term:open()
	term:clear()
	vim.defer_fn(function()
		term:send(cmd)
	end, 1000)
end

return M
