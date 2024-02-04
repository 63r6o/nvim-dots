-- map leader to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- relative line numbers
vim.o.relativenumber = true
-- you can't go lower or upper without scrolling
vim.o.scrolloff = 8
-- highlight the line under the cursor
vim.o.cursorline = true

-- set the tabs properly
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- sync clipboard with the OS
vim.o.clipboard = "unnamedplus"

-- highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- highlight on search
vim.o.hlsearch = false

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Save undo history
vim.o.undofile = true

-- keep cursor in middle during "jump scroll"
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })
-- keep cursor in middle during "go to bottom"
vim.keymap.set('n', 'G', 'Gzz', { noremap = true })

-- my buffer related stuff
vim.keymap.set('n', '<leader>ls', ':ls<CR>', { desc = '[l]i[s]t the open buffers' })
vim.keymap.set('n', '<leader>bp', ':bp<CR>', { desc = '[b]uffer [p]revious' })
vim.keymap.set('n', '<leader>bn', ':bn<CR>', { desc = '[b]uffer [n]ext' })
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = '[b]uffer [d]elete' })
