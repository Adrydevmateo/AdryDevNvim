return {
  { 
    'echasnovski/mini.completion', version = '*',
    config = function()
      require('mini.completion').setup{}
    end
  },
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

      map({'n'}, '<C-n>', ':NvimTreeToggle<ENTER>')
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
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup {}
      local map = vim.keymap.set
      local bn = require('telescope.builtin')
      
      map('n', '<C-p>', bn.find_files, {})
      map('n', '<leader>fg', bn.live_grep, {})
      map('n', '<leader>fb', bn.buffers, {})
      map('n', '<leader>fh', bn.help_tags, {})
    end
  },
  { 'tpope/vim-surround' },
  { 
    'echasnovski/mini.comment', version = '*',
    config = function()
      require('mini.comment').setup{}
    end
  },
  {
    'echasnovski/mini.pairs', version = '*',
    event = "InsertEnter",
    config = function()
      require('mini.pairs').setup{}
    end
  },
  {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = function()
      require('toggleterm').setup{
        open_mapping = [[<C-\>]],
        direction = 'float',
      }
    end
  },
  {
    'folke/lsp-colors.nvim',
    config = function()
      require("lsp-colors").setup({
        Error = "#db4b4b",
        Warning = "#e0af68",
        Information = "#0db9d7",
        Hint = "#10B981"
      })
    end
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require('todo-comments').setup{}
    end
  },
  {
    -- WARNING: Could not be working
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require('trouble').setup{}
    end
  }
}
