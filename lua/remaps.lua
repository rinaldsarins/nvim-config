-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- File browser
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
