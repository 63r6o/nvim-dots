return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
        section_separators = { left = '', right = '' } --'' -- '',
      },
--      tabline = {
--        lualine_a = { { 'buffers', separator = { right = '' } } },
--        lualine_z = { { 'datetime', separator = { left = '', right = '' } } }
--      }
    })
  end
}
