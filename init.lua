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

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- File browser
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

-- Install lazy
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)


-- Setup plugins
require('lazy').setup({
  checker = { enabled = true },
  import = "plugins",
});
