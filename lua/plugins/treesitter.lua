return {
	{
		"windwp/nvim-ts-autotag",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				ensure_installed = {
					"lua",
					"javascript",
					"typescript",
					"html",
					"css",
					"json",
					"rust",
					"haskell",
					"markdown",
					"sql",
					"toml",
				},
				highlight = { enable = true },
				indent = { enable = true },
				autotag = {
					enable = true,
				},
			})
		end,
	},
}
