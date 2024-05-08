return {
 {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
   "nvim-tree/nvim-web-devicons",
  },
  config = function()
   require("nvim-tree").setup {}
   
   local g = vim.g
   local opt = vim.opt
   local map = vim.keymap.set

   -- disable netrw at the very start of your init.lua
   g.loaded_netrw = 1
   g.loaded_netrwPlugin = 1

   -- optionally enable 24-bit colour
   opt.termguicolors = true

   map({ 'n' }, '<C-n>', ':NvimTreeToggle<ENTER>')
  end,
 },
 {
  'nvim-treesitter/nvim-treesitter',
  config = function()
   require('nvim-treesitter.configs').setup {
    ensure_installed = { 'html', 'css', 'javascript' },
   }
  end
 },
 {
  'echasnovski/mini.comment',
  version = '*',
  config = function()
   require('mini.comment').setup {}
  end
 },
 {
  'echasnovski/mini.pairs',
  version = '*',
  event = "InsertEnter",
  config = function()
   require('mini.pairs').setup {}
  end
 },
 {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
   require('toggleterm').setup {
    open_mapping = [[<C-\>]],
    direction = 'float',
   }
  end
 },
}