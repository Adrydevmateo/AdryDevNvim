local masonOpts = {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
}

local masonLspOpts = {
  ensure_installed = { "lua_ls", "gopls" },
}

return {
  { "williamboman/mason-lspconfig.nvim" },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup(masonOpts)
      require("mason-lspconfig").setup(masonLspOpts)
      local lsp = require("lspconfig")
      local cap = require('cmp_nvim_lsp').default_capabilities()

      -->> [ Lsp Configurations
      lsp.lua_ls.setup({
        capabilities = cap
      })
      lsp.gopls.setup {
        capabilities = cap
      }

      --<< Lsp COnfigurations ]
    end,
  },
}
