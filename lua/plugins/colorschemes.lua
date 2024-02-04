return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"pineapplegiant/spaceduck",
		name = "spaceduck",
		-- priority = 1000,
		-- config = function()
		--   vim.cmd.colorscheme("spaceduck")
		-- end,
	},
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		-- priority = 1000,
		-- config = function()
		--   vim.cmd.colorscheme("spaceduck")
		-- end,
	},
}
