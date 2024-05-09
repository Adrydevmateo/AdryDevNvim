return {
 'neovim/nvim-lspconfig',
 config = function()
  require('lspconfig')
  -- local lspconf = require('lspconfig')
  local map = vim.keymap.set

  map('n', '<leader>e', vim.diagnostic.open_float)

  vim.api.nvim_create_autocmd('LspAttach', {
   group = vim.api.nvim_create_augroup('UserLspConfig', {}),
   callback = function(ev)
    -- Buffer local mappings
    local opts = { buffer = ev.buf }
    local buf = vim.lsp.buf
    map('n', 'gD', buf.declaration, opts)
    map('n', 'gd', buf.definition, opts)
    map('n', 'K', buf.hover, opts)
    map('n', '<leader>gi', buf.implementation, opts)
    map('n', '<leader>gr', buf.references, opts)
    map({ 'n', 'v' }, '<leader>ca', buf.code_action, opts)
    map('n', '<leader>f', function()
     buf.format { async = false }
    end, opts)
   end
  })

  -- lspconf.technology.setup {
  --  capabilities = capabilities
  -- }
 end
}
