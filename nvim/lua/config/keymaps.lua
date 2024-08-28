-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local discipline = require('iya.discipline')
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement numbers
keymap.set('n', '+', '<C-a>', { desc = 'Increment' })
keymap.set('n', '-', '<C-x>', { desc = 'Decrement' })

-- Delete a word backwards
keymap.set('n', 'dw', 'vb_d', { desc = 'Delete word backwards' })

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>', { desc = 'Select all' })

-- Jumplist
keymap.set('n', '<C-m>', '<C-i>', opts)

-- New tab
keymap.set('n', 'te', ':tabedit', { desc = 'New tab', noremap = true, silent = true })
keymap.set('n', '<tab>', ':tabnext<Return>', { desc = 'Next tab', noremap = true, silent = true })
keymap.set('n', '<s-tab>', ':tabprev<Return>', { desc = 'Previous tab', noremap = true, silent = true })

-- Split pane
keymap.set('n', 'ss', ':split<Return>', { desc = 'Split pane', noremap = true, silent = true })
keymap.set('n', 'ss', ':vsplit<Return>', { desc = 'Split pane vertically', noremap = true, silent = true })

-- Move panes
keymap.set('n', 'sh', '<C-w>h', { desc = 'Move pane left' })
keymap.set('n', 'sk', '<C-w>k', { desc = 'Move pane up' })
keymap.set('n', 'sj', '<C-w>j', { desc = 'Move pane down' })
keymap.set('n', 'sl', '<C-w>l', { desc = 'Move pane right' })

-- Resize panes
keymap.set('n', '<C-w><left>', '<C-w><', { desc = 'Resize pane to the left' })
keymap.set('n', '<C-w><right>', '<C-w>>', { desc = 'Resize pane to the right' })
keymap.set('n', '<C-w><up>', '<C-w>+', { desc = 'Resize pane to the top' })
keymap.set('n', '<C-w><down>', '<C-w>-', { desc = 'Resize pane to the bottom' })

-- Diagnostics
keymap.set('n', '<C-j>', function()
	vim.diagnostic.goto_next()
end, opts)
