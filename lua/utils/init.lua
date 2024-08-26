local M = {}

function M.floaterm()
	vim.cmd("FloatermNew --width=0.85 --height=0.85 --position=center")
end

function M.toggleterm()
	vim.cmd("FloatermToggle")
end

function M.lazygit()
	vim.cmd("FloatermNew --name=lazygit --width=0.85 --height=0.85 --position=center lazygit")
end

return M
