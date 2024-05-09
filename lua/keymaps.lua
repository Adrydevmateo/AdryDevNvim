local map = vim.keymap.set

-- Set spacebar as leader
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true })

-- Save current buffer on Ctrl + s
map({ "n", "i" }, "<C-s>", "<cmd>lua vim.lsp.buf.format({ wait = true }) vim.cmd('w')<CR>", { noremap = true })

-- Disable arrow keys in normal mode
map("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
map("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
map("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
map("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Set keymaps to navigate through windows
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
