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
-- opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.listchars = { trail = '·', nbsp = '␣' }

-- Show which line your cursor is on
-- opt.cursorline = true

-- Minimal numbor of lines to keep above and below the cursor
-- opt.scrolloff = 10

-- Set highlight on search, but clear on pressing <Esc> in normal mode
opt.hlsearch = true
map("n", "<Esc>", "<cmd>nohlsearch<CR>")
