local M = {}

function M:match_symbol(opts)
	local l = unpack(vim.api.nvim_win_get_cursor(0), 1, 1)
	while l > 0 do
		local line = vim.fn.getline(l)
		if string.match(line, opts.find) then
			if opts.offset ~= nil then
				line = vim.fn.getline(l + opts.offset)
			end
			return string.match(line, opts.extract)
		end
		l = l - 1
	end
	return nil
end

return M
