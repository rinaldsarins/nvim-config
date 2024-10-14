-- leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- clipboard
vim.schedule(function() 
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- line wrap
vim.opt.wrap = false

-- tabs
vim.opt.tabstop = 2 -- Number of visual spaces per tab
vim.opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

