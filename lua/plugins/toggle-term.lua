return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-\>]],
			on_create = function()
				vim.cmd("TermExec cmd='fetchke'")
			end,
			direction = "float",
		})
	end,
}
