local M = {}

function M.floaterm()
	vim.cmd("FloatermNew --width=0.85 --height=0.85 --position=center")
end

function M.lazygit()
	vim.cmd("FloatermNew --width=0.85 --height=0.85 --position=center lazygit")
end

function M.ranger()
	vim.cmd("FloatermNew --width=0.85 --height=0.85 --position=center ranger")
end

return M
