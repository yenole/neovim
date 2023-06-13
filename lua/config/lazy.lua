local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		-- import LazyVim plugins
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		-- { import = "lazyvim.plugins.extras.coding.copilot" },
		-- { import = "lazyvim.plugins.extras.ui.edgy" },
		-- { import = "lazyvim.plugins.extras.formatting.pretter" },
		-- import/override with your plugins
		{ import = "plugins" },
	},
	defaults = {
		lazy = true, -- every plugin is lazy-loaded by default
		version = false, -- try installing the latest stable version for plugins that support semver
	},
})
