-- TODO: Set up fidget notifications
return {
  {
    'nvim-tree/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons')
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      local cmd = vim.cmd
      cmd [[colorscheme catppuccin-mocha]]
    end
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {}
    end
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        hide = {
          tabline = false,
        },
      }
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {}
    end
  },
  {
    'echasnovski/mini.indentscope',
    version = '*',
    config = function()
      require('mini.indentscope').setup {}
    end
  },
}
