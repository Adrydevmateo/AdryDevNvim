-- [Settings]
local opt = vim.opt
local g = vim.g
local map = vim.keymap.set

-- Use nerd fonts
g.have_nerd_font = true

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Use spaces for indentation
opt.expandtab = true

-- Size of indent created by commands
opt.shiftwidth = 1

-- Width of a tab character
opt.tabstop = 1

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Sets how hidden characters are displayed in the current buffer
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal numbor of lines to keep above and below the cursor
-- opt.scrolloff = 10

-- Set highlight on search, but clear on pressing <Esc> in normal mode
opt.hlsearch = true
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- [Keymaps]
local map = vim.keymap.set
local g = vim.g

-- Set spacebar as leader
g.mapleader = ' '

-- Save current buffer on Ctrl + s
map({ "i" }, "<C-s>", "<C-o>:w<ENTER>")
map({ "n" }, "<C-s>", ":w<ENTER>")

-- Disable arrow keys in normal mode
map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Set keymaps to navigate through windows
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
