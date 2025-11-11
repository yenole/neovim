vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.mouse = ""
vim.opt.cmdheight = 0
vim.diagnostic.config({ virtual_text = false })
vim.opt.clipboard = "unnamedplus"

-- WSL yank
if vim.fn.has("wsl") then
	vim.g.clipboard = {
		name = "win32yank-wsl",
		copy = {
			["+"] = "win32yank.exe -i --crlf",
			["*"] = "win32yank.exe -i --crlf",
		},
		paste = {
			["+"] = "win32yank.exe -o --lf",
			["*"] = "win32yank.exe -o --lf",
		},
		cache_enabled = 0,
	}
end
